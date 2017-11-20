.class final Lcom/google/android/gms/org/conscrypt/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/android/gms/org/conscrypt/a;

.field private c:Ljavax/net/ssl/SSLSession;


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/a;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/c;->b:Lcom/google/android/gms/org/conscrypt/a;

    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/c;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/c;->c:Ljavax/net/ssl/SSLSession;

    if-eqz v0, :cond_0

    move v0, v1

    .line 104
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/c;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    .line 98
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/c;->c:Ljavax/net/ssl/SSLSession;

    move v0, v1

    .line 100
    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/c;->c:Ljavax/net/ssl/SSLSession;

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic nextElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/c;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/c;->c:Ljavax/net/ssl/SSLSession;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/c;->c:Ljavax/net/ssl/SSLSession;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
