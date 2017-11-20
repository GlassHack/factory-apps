.class public abstract Lcom/google/maps/api/android/lib6/gmm6/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/f/g;


# instance fields
.field protected final a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field protected final b:Lcom/google/maps/api/android/lib6/gmm6/l/au;

.field protected final c:Lcom/google/maps/api/android/lib6/gmm6/o/au;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V
    .locals 1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/n/l;->c()Lcom/google/maps/api/android/lib6/gmm6/o/au;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/f/j;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/o/au;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/o/au;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/j;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/f/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/j;->b:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null zoom table"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/at;->a()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/f/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/at;->a(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Ljava/util/List;
    .locals 9

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v5

    move v3, v1

    :goto_0
    const/4 v0, 0x2

    if-gt v3, v0, :cond_2

    invoke-virtual {v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/at;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    shl-int v6, v0, v3

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_1

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_0

    new-instance v7, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/f/j;->b:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v8

    invoke-direct {v7, v3, v2, v0, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;-><init>(IIILcom/google/maps/api/android/lib6/gmm6/l/at;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method final c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/o/at;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/j;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v0

    return-object v0
.end method
