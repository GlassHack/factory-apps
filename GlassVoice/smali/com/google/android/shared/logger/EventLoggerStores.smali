.class public final Lcom/google/android/shared/logger/EventLoggerStores;
.super Ljava/lang/Object;
.source "EventLoggerStores.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final DEBUG_LOG_EVENT:Z = false

.field private static final DEBUG_METHOD_TRACING:Z = false

.field private static final TAG:Ljava/lang/String; = "EventLogger"

.field private static final sMainEventLoggerStore:Lcom/google/android/shared/logger/MainEventLoggerStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/shared/logger/MainEventLoggerStore;

    invoke-direct {v0}, Lcom/google/android/shared/logger/MainEventLoggerStore;-><init>()V

    sput-object v0, Lcom/google/android/shared/logger/EventLoggerStores;->sMainEventLoggerStore:Lcom/google/android/shared/logger/MainEventLoggerStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEventStore()Lcom/google/android/shared/logger/EventLoggerStore;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/shared/logger/EventLoggerStores;->sMainEventLoggerStore:Lcom/google/android/shared/logger/MainEventLoggerStore;

    .line 37
    .local v0, "eventLoggerStore":Lcom/google/android/shared/logger/EventLoggerStore;
    return-object v0
.end method

.method public static getMainEventLoggerStore()Lcom/google/android/shared/logger/MainEventLoggerStore;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/shared/logger/EventLoggerStores;->sMainEventLoggerStore:Lcom/google/android/shared/logger/MainEventLoggerStore;

    return-object v0
.end method
