.class public final Lcom/google/glass/logging/Timer$TimerProvider;
.super Lcom/google/glass/inject/Provider;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/logging/Timer;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/logging/Timer$TimerProvider;

.field private static final TIMER:Lcom/google/glass/logging/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/glass/logging/Timer$TimerProvider;

    invoke-direct {v0}, Lcom/google/glass/logging/Timer$TimerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/logging/Timer$TimerProvider;->INSTANCE:Lcom/google/glass/logging/Timer$TimerProvider;

    .line 53
    new-instance v0, Lcom/google/glass/logging/Timer;

    invoke-direct {v0}, Lcom/google/glass/logging/Timer;-><init>()V

    sput-object v0, Lcom/google/glass/logging/Timer$TimerProvider;->TIMER:Lcom/google/glass/logging/Timer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/Timer;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/glass/logging/Timer$TimerProvider;->TIMER:Lcom/google/glass/logging/Timer;

    return-object v0
.end method

.method public static getInstance()Lcom/google/glass/logging/Timer$TimerProvider;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/logging/Timer$TimerProvider;->INSTANCE:Lcom/google/glass/logging/Timer$TimerProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/logging/Timer;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/glass/logging/Timer$TimerProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/Timer$TimerProvider$1;-><init>(Lcom/google/glass/logging/Timer$TimerProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/Timer$TimerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/Timer;

    return-object v0
.end method
