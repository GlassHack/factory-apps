.class public Lcom/google/glass/view/WindowManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "WindowManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/view/WindowManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/view/WindowManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/view/WindowManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/view/WindowManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/view/WindowManagerProvider;->instance:Lcom/google/glass/view/WindowManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/view/WindowManagerProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/view/WindowManagerProvider;->instance:Lcom/google/glass/view/WindowManagerProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/view/WindowManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/view/WindowManagerProvider$1;-><init>(Lcom/google/glass/view/WindowManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/view/WindowManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
