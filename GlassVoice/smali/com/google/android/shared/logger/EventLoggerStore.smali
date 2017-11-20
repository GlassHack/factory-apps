.class public interface abstract Lcom/google/android/shared/logger/EventLoggerStore;
.super Ljava/lang/Object;
.source "EventLoggerStore.java"


# static fields
.field public static final ACTION_GROUP:I = 0x30000000

.field public static final APPLICATION_EVENT_GROUP:I = 0x20000000

.field public static final CLIENT_EVENT_GROUP:I = 0x10000000

.field public static final LATENCY_START_GROUP:I = 0x50000000

.field public static final SCREEN_GROUP:I = 0x40000000

.field public static final SPEECH_EVENT_GROUP:I = 0x20000000

.field public static final SPEECH_LATENCY_START_GROUP:I = 0x60000000


# virtual methods
.method public abstract recordEvent(ILjava/lang/Object;)V
.end method
