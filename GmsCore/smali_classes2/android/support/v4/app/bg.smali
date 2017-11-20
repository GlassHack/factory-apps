.class Landroid/support/v4/app/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/bd;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bb;)Landroid/app/Notification;
    .locals 5

    .prologue
    .line 423
    iget-object v0, p1, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    .line 424
    iget-object v1, p1, Landroid/support/v4/app/bb;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/bb;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/bb;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 427
    iget v1, p1, Landroid/support/v4/app/bb;->j:I

    if-lez v1, :cond_0

    .line 428
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 430
    :cond_0
    return-object v0
.end method
