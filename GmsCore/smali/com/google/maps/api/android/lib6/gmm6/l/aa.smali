.class public final Lcom/google/maps/api/android/lib6/gmm6/l/aa;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;
    .locals 4

    const/4 v0, 0x0

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->e:Lcom/google/maps/api/android/lib6/gmm6/l/z;

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/l/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/y;->b:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/y;->a:Ljava/lang/String;

    :cond_0
    :goto_1
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;I)V

    return-object v3

    :cond_1
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/y;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v1

    const-string v0, ""

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v1

    iget-object v2, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ab;

    invoke-virtual {v2, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/ab;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v1

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    iget-object v3, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->d:[Ljava/lang/String;

    if-eqz v3, :cond_4

    if-ltz v2, :cond_4

    array-length v3, v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->d:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method
