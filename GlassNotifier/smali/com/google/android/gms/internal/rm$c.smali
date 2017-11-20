.class public Lcom/google/android/gms/internal/rm$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/rm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# instance fields
.field private UC:I

.field public final aFl:Lcom/google/android/gms/common/data/DataHolder;

.field private final aFm:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    iput-object p1, p0, Lcom/google/android/gms/internal/rm$c;->aFl:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/rm$c;->aFm:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/rm$c;->aFm:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/rm$c;->aFl:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    iget-object v2, p0, Lcom/google/android/gms/internal/rm$c;->aFl:Lcom/google/android/gms/common/data/DataHolder;

    iget v3, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/data/DataHolder;->dc(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    iget v1, p0, Lcom/google/android/gms/internal/rm$c;->aFm:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jz(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    return-void
.end method

.method public moveToNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    iget v0, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/rm$c;->UC:I

    iget v1, p0, Lcom/google/android/gms/internal/rm$c;->aFm:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
