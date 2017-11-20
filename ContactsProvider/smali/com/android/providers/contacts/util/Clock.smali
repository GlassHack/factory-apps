.class public Lcom/android/providers/contacts/util/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field private static final INSTANCE:Lcom/android/providers/contacts/util/Clock;

.field private static sInstance:Lcom/android/providers/contacts/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/android/providers/contacts/util/Clock;

    invoke-direct {v0}, Lcom/android/providers/contacts/util/Clock;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/util/Clock;->INSTANCE:Lcom/android/providers/contacts/util/Clock;

    .line 22
    sget-object v0, Lcom/android/providers/contacts/util/Clock;->INSTANCE:Lcom/android/providers/contacts/util/Clock;

    sput-object v0, Lcom/android/providers/contacts/util/Clock;->sInstance:Lcom/android/providers/contacts/util/Clock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/android/providers/contacts/util/Clock;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/providers/contacts/util/Clock;->sInstance:Lcom/android/providers/contacts/util/Clock;

    return-object v0
.end method

.method static injectInstance(Lcom/android/providers/contacts/util/Clock;)V
    .locals 0
    .param p0, "clock"    # Lcom/android/providers/contacts/util/Clock;

    .prologue
    .line 30
    sput-object p0, Lcom/android/providers/contacts/util/Clock;->sInstance:Lcom/android/providers/contacts/util/Clock;

    .line 31
    return-void
.end method

.method static resetInstance()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/providers/contacts/util/Clock;->INSTANCE:Lcom/android/providers/contacts/util/Clock;

    sput-object v0, Lcom/android/providers/contacts/util/Clock;->sInstance:Lcom/android/providers/contacts/util/Clock;

    .line 36
    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
