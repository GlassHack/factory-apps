.class public final Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "DeferredContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/deferredcontent/DeferredContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/deferredcontent/DeferredContentLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    invoke-direct {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->INSTANCE:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 28
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider$1;-><init>(Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->init(Lcom/google/common/base/Supplier;)V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->INSTANCE:Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    return-object v0
.end method
