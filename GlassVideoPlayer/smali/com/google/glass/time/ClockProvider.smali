.class public final Lcom/google/glass/time/ClockProvider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SUPPLIER:Lcom/google/common/base/av;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/glass/time/ClockProvider$1;

    invoke-direct {v0}, Lcom/google/glass/time/ClockProvider$1;-><init>()V

    sput-object v0, Lcom/google/glass/time/ClockProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/av;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/time/ClockProvider$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/glass/time/ClockProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/time/ClockProvider;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/time/ClockProvider$SingletonHolder;->access$200()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/google/glass/time/Clock;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/time/ClockProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/av;

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/av;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/time/Clock;

    return-object v0
.end method
