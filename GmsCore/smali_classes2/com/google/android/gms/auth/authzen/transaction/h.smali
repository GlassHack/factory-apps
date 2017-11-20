.class public final Lcom/google/android/gms/auth/authzen/transaction/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    const/high16 v1, 0x10000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 41
    const-string v2, "creation_elapsed_time"

    invoke-virtual {p2, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "com.google.android.gms.auth.authzen.category.creationElapsedTime:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-static {p0, p1, p2, v3}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;Z)V

    .line 48
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 50
    const-string v1, "authzen"

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 53
    iget-object v1, p1, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    .line 54
    iget-boolean v2, v1, Lcom/google/m/b/a/a/o;->e:Z

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, v1, Lcom/google/m/b/a/a/o;->f:Lcom/google/m/b/a/a/h;

    iget-boolean v1, v2, Lcom/google/m/b/a/a/h;->f:Z

    if-eqz v1, :cond_0

    iget v1, v2, Lcom/google/m/b/a/a/h;->g:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "AuthZen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown sound type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Lcom/google/m/b/a/a/h;->g:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, v2, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, v2, Lcom/google/m/b/a/a/h;->b:Ljava/util/List;

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    .line 59
    :cond_1
    :goto_1
    iget-object v1, p1, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget v2, v1, Lcom/google/m/b/a/a/o;->g:I

    if-eqz v2, :cond_2

    iget-boolean v1, p1, Lcom/google/m/b/a/a/p;->g:Z

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/google/m/b/a/a/p;->h:Lcom/google/m/b/a/a/i;

    iget-object v1, v1, Lcom/google/m/b/a/a/i;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/d/a/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v3

    :goto_2
    if-nez v1, :cond_9

    :cond_2
    move v1, v4

    :goto_3
    if-eqz v1, :cond_e

    .line 60
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v4, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 62
    iget-object v2, p1, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-object v2, v2, Lcom/google/m/b/a/a/o;->f:Lcom/google/m/b/a/a/h;

    iget-object v4, p1, Lcom/google/m/b/a/a/p;->h:Lcom/google/m/b/a/a/i;

    new-instance v5, Landroid/support/v4/app/bb;

    invoke-direct {v5, p0}, Landroid/support/v4/app/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/support/v4/app/bb;->b()Landroid/support/v4/app/bb;

    move-result-object v5

    iput v3, v5, Landroid/support/v4/app/bb;->y:I

    iput-object v1, v5, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    const v1, 0x1080078

    invoke-virtual {v5, v1}, Landroid/support/v4/app/bb;->a(I)Landroid/support/v4/app/bb;

    move-result-object v1

    iget-boolean v5, v2, Lcom/google/m/b/a/a/h;->d:Z

    invoke-virtual {v1, v8, v5}, Landroid/support/v4/app/bb;->a(IZ)V

    iget-boolean v5, v2, Lcom/google/m/b/a/a/h;->c:Z

    iput-boolean v5, v1, Landroid/support/v4/app/bb;->k:Z

    iget v2, v2, Lcom/google/m/b/a/a/h;->a:I

    iput v2, v1, Landroid/support/v4/app/bb;->j:I

    iget-object v2, v4, Lcom/google/m/b/a/a/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    move-result-object v1

    iget-boolean v2, v4, Lcom/google/m/b/a/a/i;->b:Z

    if-eqz v2, :cond_3

    iget-object v2, v4, Lcom/google/m/b/a/a/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    :cond_3
    iget-boolean v2, v4, Lcom/google/m/b/a/a/i;->f:Z

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/google/m/b/a/a/i;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    :cond_4
    iget-boolean v2, v4, Lcom/google/m/b/a/a/i;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, v4, Lcom/google/m/b/a/a/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    :cond_5
    iget-boolean v2, v4, Lcom/google/m/b/a/a/i;->h:Z

    if-eqz v2, :cond_6

    iget-object v2, v4, Lcom/google/m/b/a/a/i;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/bb;->e(Ljava/lang/CharSequence;)Landroid/support/v4/app/bb;

    :cond_6
    invoke-virtual {v1}, Landroid/support/v4/app/bb;->c()Landroid/app/Notification;

    move-result-object v1

    .line 63
    const-string v2, "authzen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 68
    :goto_4
    return-void

    .line 55
    :pswitch_1
    iget-object v1, v2, Lcom/google/m/b/a/a/h;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_5
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v8}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5

    :cond_7
    invoke-static {v2}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Ljava/util/List;)[J

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_1

    :cond_8
    move v1, v4

    .line 59
    goto/16 :goto_2

    :cond_9
    if-ne v2, v3, :cond_a

    move v1, v3

    goto/16 :goto_3

    :cond_a
    if-ne v2, v8, :cond_d

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v3

    :goto_6
    if-nez v1, :cond_c

    move v1, v3

    goto/16 :goto_3

    :cond_b
    move v1, v4

    goto :goto_6

    :cond_c
    move v1, v4

    goto/16 :goto_3

    :cond_d
    const-string v1, "AuthZen"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown interaction type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    goto/16 :goto_3

    .line 66
    :cond_e
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Landroid/content/Intent;Z)V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    .line 90
    const-string v2, "creation_elapsed_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 92
    iget-wide v2, p1, Lcom/google/m/b/a/a/p;->b:J

    iget-object v6, p1, Lcom/google/m/b/a/a/p;->d:Lcom/google/m/b/a/a/o;

    iget-wide v6, v6, Lcom/google/m/b/a/a/o;->a:J

    sub-long v2, v6, v2

    .line 93
    const-string v6, "AuthZen"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Prompt lifetime in millis: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    cmp-long v6, v2, v0

    if-gez v6, :cond_0

    move-wide v2, v0

    .line 99
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 100
    const-string v1, "cancel_prompt"

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const-string v1, "alarm_send_reply"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/authzen/transaction/h;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 104
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 105
    const/4 v6, 0x2

    add-long/2addr v2, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 106
    return-void
.end method

.method private static a(Ljava/util/List;)[J
    .locals 8

    .prologue
    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 174
    const/4 v0, 0x0

    .line 175
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 176
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v1

    move v1, v2

    .line 177
    goto :goto_0

    .line 178
    :cond_0
    return-object v3
.end method
