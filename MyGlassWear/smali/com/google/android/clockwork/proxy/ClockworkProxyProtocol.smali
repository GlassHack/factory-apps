.class public Lcom/google/android/clockwork/proxy/ClockworkProxyProtocol;
.super Ljava/lang/Object;
.source "ClockworkProxyProtocol.java"


# static fields
.field public static final FEATURE_TAG:Ljava/lang/String; = "clockwork_proxy"

.field public static final PATH_RPC_WITH_FEATURE:Ljava/lang/String;

.field public static final TYPE_CLOSE:I = 0x4

.field public static final TYPE_DATAGRAM:I = 0x6

.field public static final TYPE_OPEN:I = 0x3

.field public static final TYPE_START:I = 0x1

.field public static final TYPE_STOP:I = 0x2

.field public static final TYPE_WRITE:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    const-string v0, "clockwork_proxy"

    const-string v1, "/proxy"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/proxy/ClockworkProxyProtocol;->PATH_RPC_WITH_FEATURE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
