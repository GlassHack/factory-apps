.class Lcom/google/android/gms/internal/fp$a;
.super Landroid/database/CursorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private OF:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput p2, p0, Lcom/google/android/gms/internal/fp$a;->OF:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/fp$a;->OF:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
