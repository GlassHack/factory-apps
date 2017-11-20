.class final Lcom/google/android/d/c/c;
.super Lcom/google/android/d/c/d;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field final synthetic a:Lcom/google/android/d/c/a;

.field private c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method private constructor <init>(Lcom/google/android/d/c/a;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .locals 1

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/d/c/c;->a:Lcom/google/android/d/c/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/d/c/d;-><init>(Lcom/google/android/d/c/a;Lorg/apache/http/conn/scheme/SocketFactory;B)V

    iput-object p2, p0, Lcom/google/android/d/c/c;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/d/c/a;Lorg/apache/http/conn/scheme/LayeredSocketFactory;B)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/google/android/d/c/c;-><init>(Lcom/google/android/d/c/a;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/d/c/c;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
