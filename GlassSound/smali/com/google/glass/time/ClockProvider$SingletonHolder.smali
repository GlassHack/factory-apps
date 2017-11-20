.class final Lcom/google/glass/time/ClockProvider$SingletonHolder;
.super Ljava/lang/Object;
.source "ClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/time/ClockProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final CLOCK_PROVIDER_INSTANCE:Lcom/google/glass/time/ClockProvider;

.field private static final DEFAULT_CLOCK_INSTANCE:Lcom/google/glass/time/ClockImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/time/ClockProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/time/ClockProvider;-><init>(Lcom/google/glass/time/ClockProvider$1;)V

    sput-object v0, Lcom/google/glass/time/ClockProvider$SingletonHolder;->CLOCK_PROVIDER_INSTANCE:Lcom/google/glass/time/ClockProvider;

    .line 20
    new-instance v0, Lcom/google/glass/time/ClockImpl;

    invoke-direct {v0}, Lcom/google/glass/time/ClockImpl;-><init>()V

    sput-object v0, Lcom/google/glass/time/ClockProvider$SingletonHolder;->DEFAULT_CLOCK_INSTANCE:Lcom/google/glass/time/ClockImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/time/ClockImpl;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/time/ClockProvider$SingletonHolder;->DEFAULT_CLOCK_INSTANCE:Lcom/google/glass/time/ClockImpl;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/glass/time/ClockProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/time/ClockProvider$SingletonHolder;->CLOCK_PROVIDER_INSTANCE:Lcom/google/glass/time/ClockProvider;

    return-object v0
.end method
