.class public final Lcom/google/glass/voice/embedded/GetPronsManager$Provider;
.super Lcom/google/glass/inject/Provider;
.source "GetPronsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/embedded/GetPronsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/voice/embedded/GetPronsManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/voice/embedded/GetPronsManager$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/google/glass/voice/embedded/GetPronsManager$Provider;

    invoke-direct {v0}, Lcom/google/glass/voice/embedded/GetPronsManager$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/voice/embedded/GetPronsManager$Provider;->INSTANCE:Lcom/google/glass/voice/embedded/GetPronsManager$Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/voice/embedded/GetPronsManager$Provider;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/glass/voice/embedded/GetPronsManager$Provider;->INSTANCE:Lcom/google/glass/voice/embedded/GetPronsManager$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/util/Locale;)Lcom/google/glass/voice/embedded/GetPronsManager;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 108
    new-instance v0, Lcom/google/glass/voice/embedded/GetPronsManager$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/embedded/GetPronsManager$Provider$1;-><init>(Lcom/google/glass/voice/embedded/GetPronsManager$Provider;Ljava/util/Locale;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/embedded/GetPronsManager;

    return-object v0
.end method
