.class public Lcom/android/providers/contacts/MemoryCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "MemoryCursor.java"


# instance fields
.field private final mColumnNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 31
    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/MemoryCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 32
    iput-object p2, p0, Lcom/android/providers/contacts/MemoryCursor;->mColumnNames:[Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public fillFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/MemoryCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 37
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/contacts/MemoryCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/providers/contacts/MemoryCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    return v0
.end method
