.class Lcom/google/android/gms/http/GoogleHttpClient$a;
.super Lorg/apache/http/message/BasicHttpResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/http/GoogleHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final FF:Lorg/apache/http/StatusLine;


# instance fields
.field FE:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/http/message/BasicStatusLine;

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v2, 0x1f4

    const-string v3, "Unknown error"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/http/GoogleHttpClient$a;->FF:Lorg/apache/http/StatusLine;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/http/GoogleHttpClient$a;->FF:Lorg/apache/http/StatusLine;

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/ReasonPhraseCatalog;Ljava/util/Locale;)V

    return-void
.end method
