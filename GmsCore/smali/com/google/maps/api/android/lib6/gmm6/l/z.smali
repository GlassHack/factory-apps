.class public final Lcom/google/maps/api/android/lib6/gmm6/l/z;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/z;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ab;)Lcom/google/maps/api/android/lib6/gmm6/l/z;
    .locals 7

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/z;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/z;-><init>()V

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, v1, Lcom/google/maps/api/android/lib6/gmm6/l/z;->a:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    new-instance v6, Lcom/google/maps/api/android/lib6/gmm6/l/y;

    invoke-virtual {p1, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ab;->a(I)Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/y;-><init>(Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
