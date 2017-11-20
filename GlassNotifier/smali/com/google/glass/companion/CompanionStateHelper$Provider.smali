.class public final Lcom/google/glass/companion/CompanionStateHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "CompanionStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/CompanionStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/companion/CompanionStateHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/companion/CompanionStateHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/glass/companion/CompanionStateHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/companion/CompanionStateHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/companion/CompanionStateHelper$Provider;->INSTANCE:Lcom/google/glass/companion/CompanionStateHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/google/glass/companion/CompanionStateHelper$Provider;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/companion/CompanionStateHelper$Provider;->INSTANCE:Lcom/google/glass/companion/CompanionStateHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/companion/CompanionStateHelper;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/google/glass/companion/CompanionStateHelper$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/CompanionStateHelper$Provider$1;-><init>(Lcom/google/glass/companion/CompanionStateHelper$Provider;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/CompanionStateHelper;

    return-object v0
.end method
