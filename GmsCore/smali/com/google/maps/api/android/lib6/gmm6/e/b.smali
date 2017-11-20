.class public final Lcom/google/maps/api/android/lib6/gmm6/e/b;
.super Lcom/google/maps/api/android/lib6/gmm6/e/a;


# static fields
.field private static final e:Lcom/google/maps/api/android/lib6/gmm6/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/e/c;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/c;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/16 v0, 0xc

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/e/b;->e:Lcom/google/maps/api/android/lib6/gmm6/e/e;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/a;-><init>(IILcom/google/maps/api/android/lib6/gmm6/e/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/e/d;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->b:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/16 v2, 0x1000

    invoke-interface {p1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/d;->a([BI)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->d:I

    invoke-interface {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/d;->a([BI)V

    :cond_1
    return-void
.end method
