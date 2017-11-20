.class final Lcom/google/android/gms/fitness/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/e/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 89
    check-cast p1, Lcom/google/android/gms/fitness/data/Device;

    new-instance v0, Lcom/google/n/a/a/a/a/g;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/g;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 89
    check-cast p1, Lcom/google/n/a/a/a/a/g;

    new-instance v0, Lcom/google/android/gms/fitness/data/Device;

    iget-object v1, p1, Lcom/google/n/a/a/a/a/g;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/a/a/a/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/n/a/a/a/a/g;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/n/a/a/a/a/g;->b:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V

    return-object v0
.end method
