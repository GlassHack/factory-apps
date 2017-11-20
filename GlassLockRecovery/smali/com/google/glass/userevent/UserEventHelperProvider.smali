.class public Lcom/google/glass/userevent/UserEventHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "UserEventHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/userevent/UserEventHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/userevent/UserEventHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/userevent/UserEventHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/userevent/UserEventHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/userevent/UserEventHelperProvider;->instance:Lcom/google/glass/userevent/UserEventHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/userevent/UserEventHelperProvider;->instance:Lcom/google/glass/userevent/UserEventHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/userevent/UserEventHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/userevent/UserEventHelperProvider$1;-><init>(Lcom/google/glass/userevent/UserEventHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method
