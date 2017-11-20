.class final Lcom/google/android/gms/d/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/g;


# instance fields
.field final synthetic a:Lcom/google/android/gms/d/a/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/google/android/gms/d/c;

.field final synthetic e:Lcom/google/android/gms/d/a/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/d/a/b;Lcom/google/android/gms/d/a/a;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/d/c;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/gms/d/a/f;->e:Lcom/google/android/gms/d/a/b;

    iput-object p2, p0, Lcom/google/android/gms/d/a/f;->a:Lcom/google/android/gms/d/a/a;

    iput-object p3, p0, Lcom/google/android/gms/d/a/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/d/a/f;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/d/a/f;->d:Lcom/google/android/gms/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/d/a/f;->e:Lcom/google/android/gms/d/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/d/a/b;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/d/a/s;

    iget-object v1, p0, Lcom/google/android/gms/d/a/f;->a:Lcom/google/android/gms/d/a/a;

    iget-object v2, p0, Lcom/google/android/gms/d/a/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/d/a/f;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/d/a/s;->a(Lcom/google/android/gms/d/a/m;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/d/a/f;->d:Lcom/google/android/gms/d/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RemoteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/d/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/d/c;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/gms/d/a/f;->d:Lcom/google/android/gms/d/c;

    const-string v1, "Disconnected."

    invoke-static {v1}, Lcom/google/android/gms/d/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/d/c;->a(Ljava/lang/String;)V

    .line 142
    return-void
.end method
