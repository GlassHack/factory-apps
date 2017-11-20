.class Landroid/support/v4/app/bl;
.super Landroid/support/v4/app/bk;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/support/v4/app/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/bb;)Landroid/app/Notification;
    .locals 24

    .prologue
    .line 587
    new-instance v1, Landroid/support/v4/app/bx;

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

    iget-object v0, v0, Landroid/support/v4/app/bb;->B:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->w:Landroid/os/Bundle;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->q:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/app/bb;->r:Z

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/app/bb;->s:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-direct/range {v1 .. v23}, Landroid/support/v4/app/bx;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 593
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bb;->t:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/au;Ljava/util/ArrayList;)V

    .line 594
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/app/bb;->l:Landroid/support/v4/app/bm;

    invoke-static {v1, v2}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/av;Landroid/support/v4/app/bm;)V

    .line 595
    iget-object v2, v1, Landroid/support/v4/app/bx;->c:Ljava/util/List;

    invoke-static {v2}, Landroid/support/v4/app/bu;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v1, Landroid/support/v4/app/bx;->b:Landroid/os/Bundle;

    const-string v4, "android.support.actionExtras"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_0
    iget-object v2, v1, Landroid/support/v4/app/bx;->a:Landroid/app/Notification$Builder;

    iget-object v3, v1, Landroid/support/v4/app/bx;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v1, v1, Landroid/support/v4/app/bx;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method
