.class final Lcom/google/android/gms/wearable/service/w;
.super Lcom/google/android/gms/wearable/service/x;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/google/android/gms/wearable/service/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/service/v;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/w;->e:Lcom/google/android/gms/wearable/service/v;

    iput p3, p0, Lcom/google/android/gms/wearable/service/w;->a:I

    iput-object p4, p0, Lcom/google/android/gms/wearable/service/w;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/service/w;->c:[B

    iput-object p6, p0, Lcom/google/android/gms/wearable/service/w;->d:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/service/x;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/wearable/service/w;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/wearable/service/w;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/wearable/service/w;->c:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/service/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/af;)V
    .locals 5

    .prologue
    .line 434
    new-instance v0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;

    iget v1, p0, Lcom/google/android/gms/wearable/service/w;->a:I

    iget-object v2, p0, Lcom/google/android/gms/wearable/service/w;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/service/w;->c:[B

    iget-object v4, p0, Lcom/google/android/gms/wearable/service/w;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;-><init>(ILjava/lang/String;[BLjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/internal/af;->a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;)V

    .line 436
    return-void
.end method
