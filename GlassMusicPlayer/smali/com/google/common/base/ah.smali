.class final Lcom/google/common/base/ah;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()[C
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/google/common/base/ah;->a()[C

    move-result-object v0

    return-object v0
.end method
