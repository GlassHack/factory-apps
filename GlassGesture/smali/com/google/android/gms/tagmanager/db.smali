.class abstract Lcom/google/android/gms/tagmanager/db;
.super Lcom/google/android/gms/tagmanager/ai;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/ai;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public gw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/db;->k(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/tagmanager/dd;->ir()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    return-object v0
.end method

.method public abstract k(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)V"
        }
    .end annotation
.end method
