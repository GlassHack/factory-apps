.class final Landroid/support/v4/app/bf;
.super Landroid/support/v4/app/be;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Landroid/support/v4/app/be;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/bb;)Landroid/app/Notification;
    .locals 28

    .prologue
    .line 692
    new-instance v1, Landroid/support/v4/app/bq;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bb;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/app/bb;->A:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/app/bb;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/app/bb;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/app/bb;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/app/bb;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/app/bb;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/app/bb;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/app/bb;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/app/bb;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/app/bb;->n:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/app/bb;->o:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/app/bb;->p:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/app/bb;->k:Z

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/bb;->j:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->m:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bb;->u:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->v:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->B:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->w:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/bb;->x:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/app/bb;->y:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->z:Landroid/app/Notification;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->q:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bb;->r:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->s:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v1 .. v27}, Landroid/support/v4/app/bq;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;)V

    .line 699
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bb;->t:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/au;Ljava/util/ArrayList;)V

    .line 700
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bb;->l:Landroid/support/v4/app/bm;

    invoke-static {v1, v2}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/av;Landroid/support/v4/app/bm;)V

    .line 701
    iget-object v1, v1, Landroid/support/v4/app/bq;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
