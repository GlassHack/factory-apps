.class final Lcom/google/maps/api/android/lib6/gmm6/c/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/ar;


# instance fields
.field private a:Lcom/google/maps/api/android/lib6/gmm6/c/m;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/m;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/c/ah;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/m;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/ah;->a:Lcom/google/maps/api/android/lib6/gmm6/c/m;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/c/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x68

    const-string v1, "v"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|z="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/b/z;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
