.class final Landroid/support/v4/app/bh;
.super Landroid/support/v4/app/bg;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/support/v4/app/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/bb;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 488
    iget-object v0, p1, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    .line 489
    iget-object v1, p1, Landroid/support/v4/app/bb;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/bb;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bb;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 491
    iget-object v1, p1, Landroid/support/v4/app/bb;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/bb;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bb;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    iget-object v5, p1, Landroid/support/v4/app/bb;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput-object v5, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 494
    iget v1, p1, Landroid/support/v4/app/bb;->j:I

    if-lez v1, :cond_0

    .line 495
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 497
    :cond_0
    return-object v0
.end method
