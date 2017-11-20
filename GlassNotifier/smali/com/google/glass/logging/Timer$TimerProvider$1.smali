.class Lcom/google/glass/logging/Timer$TimerProvider$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/Timer$TimerProvider;->get()Lcom/google/glass/logging/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/logging/Timer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/logging/Timer$TimerProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/Timer$TimerProvider;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/logging/Timer;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/logging/Timer$TimerProvider;->access$000()Lcom/google/glass/logging/Timer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/glass/logging/Timer$TimerProvider$1;->get()Lcom/google/glass/logging/Timer;

    move-result-object v0

    return-object v0
.end method
