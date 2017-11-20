.class final Lcom/google/maps/api/android/lib6/c/q;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/c/ek;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/ek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/q;->a:Lcom/google/maps/api/android/lib6/c/ek;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/q;->a:Lcom/google/maps/api/android/lib6/c/ek;

    if-nez v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/q;->a:Lcom/google/maps/api/android/lib6/c/ek;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
