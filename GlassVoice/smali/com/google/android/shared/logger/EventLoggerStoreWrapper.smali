.class Lcom/google/android/shared/logger/EventLoggerStoreWrapper;
.super Ljava/lang/Object;
.source "EventLoggerStoreWrapper.java"

# interfaces
.implements Lcom/google/android/shared/logger/EventLoggerStore;


# instance fields
.field private final mDelegate:Lcom/google/android/shared/logger/EventLoggerStore;


# direct methods
.method public constructor <init>(Lcom/google/android/shared/logger/EventLoggerStore;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/android/shared/logger/EventLoggerStore;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/google/android/shared/logger/EventLoggerStoreWrapper;->mDelegate:Lcom/google/android/shared/logger/EventLoggerStore;

    .line 11
    return-void
.end method


# virtual methods
.method public recordEvent(ILjava/lang/Object;)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/shared/logger/EventLoggerStoreWrapper;->mDelegate:Lcom/google/android/shared/logger/EventLoggerStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/shared/logger/EventLoggerStore;->recordEvent(ILjava/lang/Object;)V

    .line 16
    return-void
.end method
