.class public Lcom/google/glass/videocall/VideoCallHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "VideoCallHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/videocall/VideoCallHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/videocall/VideoCallHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/videocall/VideoCallHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/videocall/VideoCallHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/videocall/VideoCallHelperProvider;->INSTANCE:Lcom/google/glass/videocall/VideoCallHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/google/glass/videocall/VideoCallHelperProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/videocall/VideoCallHelperProvider;->INSTANCE:Lcom/google/glass/videocall/VideoCallHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/videocall/VideoCallHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/google/glass/videocall/VideoCallHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/videocall/VideoCallHelperProvider$1;-><init>(Lcom/google/glass/videocall/VideoCallHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/videocall/VideoCallHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/videocall/VideoCallHelper;

    return-object v0
.end method
