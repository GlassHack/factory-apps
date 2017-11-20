.class final Lcom/google/android/gms/common/util/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/common/util/a/b;

.field b:Lcom/google/android/gms/common/util/a/i;

.field c:Z

.field final synthetic d:Lcom/google/android/gms/common/util/a/f;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/util/a/f;)V
    .locals 0

    .prologue
    .line 902
    iput-object p1, p0, Lcom/google/android/gms/common/util/a/i;->d:Lcom/google/android/gms/common/util/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/util/a/f;B)V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/util/a/i;-><init>(Lcom/google/android/gms/common/util/a/f;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/util/a/i;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/i;->b:Lcom/google/android/gms/common/util/a/i;

    iget-object v0, v0, Lcom/google/android/gms/common/util/a/i;->a:Lcom/google/android/gms/common/util/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/a/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
