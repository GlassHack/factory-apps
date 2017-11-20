.class public final Lcom/google/glass/babel/AudioMessageHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "AudioMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/babel/AudioMessageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/babel/AudioMessageHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/babel/AudioMessageHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/google/glass/babel/AudioMessageHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/babel/AudioMessageHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/babel/AudioMessageHelper$Provider;->INSTANCE:Lcom/google/glass/babel/AudioMessageHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/google/glass/babel/AudioMessageHelper$Provider;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/google/glass/babel/AudioMessageHelper$Provider;->INSTANCE:Lcom/google/glass/babel/AudioMessageHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/babel/AudioMessageHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 289
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v0, Lcom/google/glass/babel/AudioMessageHelper$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/babel/AudioMessageHelper$Provider$1;-><init>(Lcom/google/glass/babel/AudioMessageHelper$Provider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/babel/AudioMessageHelper;

    return-object v0
.end method
