.class Lcom/google/glass/voice/network/SystemClockImpl$1;
.super Ljava/lang/Object;
.source "SystemClockImpl.java"

# interfaces
.implements Lcom/google/glass/voice/network/ListenerManager$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/SystemClockImpl;->registerTimeResetListener(Lcom/google/android/shared/util/Clock$TimeResetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/voice/network/ListenerManager$Dispatcher",
        "<",
        "Lcom/google/android/shared/util/Clock$TimeResetListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/SystemClockImpl;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/SystemClockImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/SystemClockImpl;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/voice/network/SystemClockImpl$1;->this$0:Lcom/google/glass/voice/network/SystemClockImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Lcom/google/android/shared/util/Clock$TimeResetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/shared/util/Clock$TimeResetListener;

    .prologue
    .line 51
    invoke-interface {p1}, Lcom/google/android/shared/util/Clock$TimeResetListener;->onTimeReset()V

    .line 52
    return-void
.end method

.method public bridge synthetic dispatch(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p1, Lcom/google/android/shared/util/Clock$TimeResetListener;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/SystemClockImpl$1;->dispatch(Lcom/google/android/shared/util/Clock$TimeResetListener;)V

    return-void
.end method
