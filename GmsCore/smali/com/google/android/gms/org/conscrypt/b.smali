.class final Lcom/google/android/gms/org/conscrypt/b;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/org/conscrypt/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/b;->a:Lcom/google/android/gms/org/conscrypt/a;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/b;->a:Lcom/google/android/gms/org/conscrypt/a;

    iget v0, v0, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/b;->size()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/b;->a:Lcom/google/android/gms/org/conscrypt/a;

    iget v2, v2, Lcom/google/android/gms/org/conscrypt/a;->maximumSize:I

    if-le v0, v2, :cond_1

    const/4 v0, 0x1

    .line 55
    :goto_0
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/b;->a:Lcom/google/android/gms/org/conscrypt/a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/org/conscrypt/a;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    .line 59
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0
.end method
