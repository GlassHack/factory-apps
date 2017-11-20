.class final Lcom/google/android/gms/fitness/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/e/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 133
    check-cast p1, Lcom/google/android/gms/fitness/data/Field;

    new-instance v0, Lcom/google/n/a/a/a/a/f;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/f;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Field;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 133
    check-cast p1, Lcom/google/n/a/a/a/a/f;

    new-instance v0, Lcom/google/android/gms/fitness/data/Field;

    iget-object v1, p1, Lcom/google/n/a/a/a/a/f;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/a/a/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
