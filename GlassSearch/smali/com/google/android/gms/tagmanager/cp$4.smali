.class Lcom/google/android/gms/tagmanager/cp$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cp;->a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/co;)Lcom/google/android/gms/tagmanager/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic TZ:Lcom/google/android/gms/tagmanager/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp$4;->TZ:Lcom/google/android/gms/tagmanager/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cn$e;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cn$e;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cn$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cn$a;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cj;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cn$e;->hM()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cn$e;->hN()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cj;->hl()Lcom/google/android/gms/tagmanager/ch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cn$e;->hM()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cn$e;->hR()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ch;->c(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cj;->hm()Lcom/google/android/gms/tagmanager/ch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cn$e;->hN()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cn$e;->hS()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ch;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
