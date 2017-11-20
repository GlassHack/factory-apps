.class final Lcom/google/android/gms/fitness/service/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/data/o;

.field final synthetic b:Lcom/google/android/gms/fitness/service/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/service/an;Lcom/google/android/gms/fitness/data/o;)V
    .locals 0

    .prologue
    .line 2051
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ao;->b:Lcom/google/android/gms/fitness/service/an;

    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ao;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ao;->b:Lcom/google/android/gms/fitness/service/an;

    iget-object v0, v0, Lcom/google/android/gms/fitness/service/an;->a:Lcom/google/android/gms/fitness/service/i;

    invoke-static {v0}, Lcom/google/android/gms/fitness/service/i;->g(Lcom/google/android/gms/fitness/service/i;)Lcom/google/android/gms/fitness/sensors/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/service/ao;->a:Lcom/google/android/gms/fitness/data/o;

    invoke-interface {v0, v1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    .line 2055
    const-string v0, "Binder listener\'s process died, unregistering %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ao;->a:Lcom/google/android/gms/fitness/data/o;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2056
    return-void
.end method
