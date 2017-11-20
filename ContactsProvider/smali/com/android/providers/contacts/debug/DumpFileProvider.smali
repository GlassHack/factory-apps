.class public Lcom/android/providers/contacts/debug/DumpFileProvider;
.super Landroid/content/ContentProvider;
.source "DumpFileProvider.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "content://com.android.contacts.dumpfile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/debug/DumpFileProvider;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static extractFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 64
    const-string v0, "application/zip"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v2, "r"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/android/providers/contacts/debug/DumpFileProvider;->extractFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/contacts/debug/DataExporter;->ensureValidFileName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/providers/contacts/debug/DumpFileProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/providers/contacts/debug/DataExporter;->getOutputFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 83
    .local v0, "file":Ljava/io/File;
    const/high16 v2, 0x10000000

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "inProjection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Lcom/android/providers/contacts/debug/DumpFileProvider;->extractFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "fileName":Ljava/lang/String;
    invoke-static {v4}, Lcom/android/providers/contacts/debug/DataExporter;->ensureValidFileName(Ljava/lang/String;)V

    .line 96
    if-eqz p2, :cond_0

    move-object v6, p2

    .line 99
    .local v6, "projection":[Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 102
    .local v1, "c":Landroid/database/MatrixCursor;
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 104
    .local v0, "b":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v7

    if-ge v5, v7, :cond_4

    .line 105
    aget-object v2, v6, v5

    .line 106
    .local v2, "column":Ljava/lang/String;
    const-string v7, "_display_name"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 104
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 96
    .end local v0    # "b":Landroid/database/MatrixCursor$RowBuilder;
    .end local v1    # "c":Landroid/database/MatrixCursor;
    .end local v2    # "column":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "projection":[Ljava/lang/String;
    :cond_0
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_display_name"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_size"

    aput-object v8, v6, v7

    goto :goto_0

    .line 110
    .restart local v0    # "b":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v1    # "c":Landroid/database/MatrixCursor;
    .restart local v2    # "column":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "projection":[Ljava/lang/String;
    :cond_1
    const-string v7, "_size"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/android/providers/contacts/debug/DumpFileProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/providers/contacts/debug/DataExporter;->getOutputFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 113
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 117
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 120
    .end local v3    # "file":Ljava/io/File;
    :cond_3
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown column "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 124
    .end local v2    # "column":Ljava/lang/String;
    :cond_4
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
