.class public final Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;
    }
.end annotation


# static fields
.field private static helper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->helper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->helper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    .line 40
    :cond_0
    sget-object v0, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->helper:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    return-object v0
.end method


# virtual methods
.method public stop()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # I

    .prologue
    .line 54
    return-void
.end method

.method public trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V
    .locals 0
    .param p1, "page"    # Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    .prologue
    .line 61
    return-void
.end method
