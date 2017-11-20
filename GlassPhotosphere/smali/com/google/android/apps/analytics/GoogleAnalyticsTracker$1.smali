.class Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z

    return-void
.end method
