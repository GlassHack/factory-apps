.class final Lcom/google/android/g/j;
.super Lcom/google/android/g/k;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field final synthetic a:Lcom/google/android/g/f;

.field private c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method private constructor <init>(Lcom/google/android/g/f;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 1

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/g/j;->a:Lcom/google/android/g/f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/g/k;-><init>(Lcom/google/android/g/f;Lorg/apache/http/conn/scheme/SocketFactory;B)V

    iput-object p2, p0, Lcom/google/android/g/j;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/g/f;Lorg/apache/http/conn/scheme/LayeredSocketFactory;B)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/google/android/g/j;-><init>(Lcom/google/android/g/f;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/g/j;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
