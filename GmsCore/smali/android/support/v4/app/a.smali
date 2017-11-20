.class final Landroid/support/v4/app/a;
.super Landroid/support/v4/app/z;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/support/v4/app/p;

.field b:Landroid/support/v4/app/c;

.field c:Landroid/support/v4/app/c;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;

.field t:Ljava/util/ArrayList;

.field u:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/p;)V
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/support/v4/app/z;-><init>()V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->l:Z

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/a;->o:I

    .line 355
    iput-object p1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    .line 356
    return-void
.end method

.method private a(Z)I
    .locals 3

    .prologue
    .line 622
    iget-boolean v0, p0, Landroid/support/v4/app/a;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_1

    .line 624
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v0, Landroid/support/v4/f/f;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/f/f;-><init>(Ljava/lang/String;)V

    .line 626
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 627
    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 629
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->n:Z

    .line 630
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v0, :cond_2

    .line 631
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/a;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/a;->o:I

    .line 635
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/p;->a(Ljava/lang/Runnable;Z)V

    .line 636
    iget v0, p0, Landroid/support/v4/app/a;->o:I

    return v0

    .line 633
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/a;->o:I

    goto :goto_0
.end method

.method private a(Landroid/support/v4/app/d;Landroid/support/v4/app/Fragment;Landroid/support/v4/f/a;Landroid/support/v4/f/a;Z)Landroid/support/v4/f/a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1129
    iget-object v0, p0, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1130
    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->t()Landroid/view/View;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/support/v4/app/aa;->a(Ljava/util/Map;Landroid/view/View;)V

    .line 1131
    if-eqz p5, :cond_2

    .line 1132
    iget-object v0, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Landroid/support/v4/f/a;->a(Ljava/util/Collection;)Z

    .line 1139
    :cond_0
    :goto_0
    if-eqz p5, :cond_3

    .line 1140
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    if-eqz v0, :cond_1

    .line 1141
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    iget-object v0, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    .line 1144
    :cond_1
    invoke-direct {p0, p1, p3, v2}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;Landroid/support/v4/f/a;Z)V

    .line 1153
    :goto_1
    return-object p3

    .line 1134
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    invoke-static {v0, v1, p3, p4}, Landroid/support/v4/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/f/a;Landroid/support/v4/f/a;)Landroid/support/v4/f/a;

    move-result-object p3

    goto :goto_0

    .line 1146
    :cond_3
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->ai:Landroid/support/v4/app/cj;

    if-eqz v0, :cond_4

    .line 1147
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->ai:Landroid/support/v4/app/cj;

    iget-object v0, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    .line 1150
    :cond_4
    invoke-static {p1, p3, v2}, Landroid/support/v4/app/a;->b(Landroid/support/v4/app/d;Landroid/support/v4/f/a;Z)V

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/f/a;Landroid/support/v4/f/a;)Landroid/support/v4/f/a;
    .locals 4

    .prologue
    .line 1260
    invoke-virtual {p3}, Landroid/support/v4/f/a;->clear()V

    .line 1261
    invoke-virtual {p2}, Landroid/support/v4/f/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1263
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1264
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1265
    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3, v0}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1270
    :cond_1
    return-object p3
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    .line 417
    if-eqz p3, :cond_1

    .line 418
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->I:Ljava/lang/String;

    .line 426
    :cond_1
    if-eqz p1, :cond_3

    .line 427
    iget v0, p2, Landroid/support/v4/app/Fragment;->G:I

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/support/v4/app/Fragment;->G:I

    if-eq v0, p1, :cond_2

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change container ID of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_2
    iput p1, p2, Landroid/support/v4/app/Fragment;->G:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->H:I

    .line 435
    :cond_3
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V

    .line 436
    iput p4, v0, Landroid/support/v4/app/c;->c:I

    .line 437
    iput-object p2, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 438
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/c;)V

    .line 439
    return-void
.end method

.method private a(ILandroid/support/v4/app/d;ZLandroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/f/a;Landroid/support/v4/f/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13

    .prologue
    .line 1179
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->p:Landroid/support/v4/app/n;

    invoke-interface {v1, p1}, Landroid/support/v4/app/n;->a(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    .line 1180
    if-eqz v7, :cond_6

    .line 1181
    move-object/from16 v0, p5

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 1182
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 1184
    if-nez v8, :cond_7

    const/4 v10, 0x0

    .line 1185
    :goto_0
    if-eqz v8, :cond_0

    if-nez v3, :cond_9

    :cond_0
    const/4 v11, 0x0

    .line 1187
    :goto_1
    if-nez v3, :cond_b

    const/4 v1, 0x0

    .line 1188
    :goto_2
    if-eqz v1, :cond_12

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->t()Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v2}, Landroid/support/v4/app/aa;->a(Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x0

    :cond_1
    :goto_3
    move-object v9, v1

    .line 1191
    :goto_4
    invoke-virtual/range {p6 .. p6}, Landroid/support/v4/f/a;->clear()V

    .line 1192
    if-eqz v11, :cond_2

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p3

    .line 1193
    invoke-direct/range {v1 .. v6}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;Landroid/support/v4/app/Fragment;Landroid/support/v4/f/a;Landroid/support/v4/f/a;Z)Landroid/support/v4/f/a;

    move-result-object p6

    .line 1198
    :cond_2
    if-eqz p3, :cond_e

    iget-object v1, v3, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    .line 1201
    :goto_5
    if-eqz v1, :cond_3

    .line 1202
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->clear()V

    .line 1203
    invoke-virtual/range {p6 .. p6}, Landroid/support/v4/f/a;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1204
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->clear()V

    .line 1205
    invoke-virtual/range {p6 .. p6}, Landroid/support/v4/f/a;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1206
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    if-eqz v9, :cond_4

    .line 1211
    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1212
    if-eqz v1, :cond_4

    move-object v2, v9

    .line 1213
    check-cast v2, Landroid/transition/Transition;

    invoke-static {v1}, Landroid/support/v4/app/aa;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Landroid/support/v4/app/ad;

    invoke-direct {v3, v1}, Landroid/support/v4/app/ad;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1217
    :cond_4
    new-instance v4, Landroid/support/v4/app/b;

    invoke-direct {v4, p0, v8}, Landroid/support/v4/app/b;-><init>(Landroid/support/v4/app/a;Landroid/support/v4/app/Fragment;)V

    .line 1225
    iget-object v6, p2, Landroid/support/v4/app/d;->e:Landroid/view/View;

    iget-object v12, p2, Landroid/support/v4/app/d;->d:Landroid/support/v4/app/af;

    iget-object v5, p2, Landroid/support/v4/app/d;->b:Landroid/support/v4/f/a;

    if-eqz v10, :cond_5

    move-object v2, v10

    check-cast v2, Landroid/transition/Transition;

    new-instance v1, Landroid/support/v4/app/ag;

    move-object v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/app/ag;-><init>(Landroid/transition/Transition;Landroid/view/View;Landroid/support/v4/app/ah;Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    new-instance v1, Landroid/support/v4/app/ae;

    invoke-direct {v1, v12}, Landroid/support/v4/app/ae;-><init>(Landroid/support/v4/app/af;)V

    invoke-virtual {v2, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1229
    :cond_5
    if-eqz p3, :cond_f

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->G()Z

    move-result v1

    move v2, v1

    .line 1231
    :goto_6
    const/4 v3, 0x1

    check-cast v10, Landroid/transition/Transition;

    check-cast v9, Landroid/transition/Transition;

    move-object v1, v11

    check-cast v1, Landroid/transition/Transition;

    if-eqz v10, :cond_11

    if-eqz v9, :cond_11

    :goto_7
    if-eqz v2, :cond_10

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/transition/Transition;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v9, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/support/v4/app/aa;->a([Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    .line 1234
    :goto_8
    if-eqz v2, :cond_6

    .line 1235
    iget-object v1, p2, Landroid/support/v4/app/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1238
    iget-object v1, p2, Landroid/support/v4/app/d;->e:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/support/v4/app/aa;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1240
    invoke-direct {p0, p2, p1, v2}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;ILjava/lang/Object;)V

    .line 1241
    iget-object v3, p2, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    move-object v1, v2

    check-cast v1, Landroid/transition/Transition;

    new-instance v4, Landroid/support/v4/app/ac;

    invoke-direct {v4, v3}, Landroid/support/v4/app/ac;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v4}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1243
    check-cast v2, Landroid/transition/Transition;

    invoke-static {v7, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1246
    :cond_6
    return-void

    .line 1184
    :cond_7
    if-eqz p3, :cond_8

    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->C()Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->z()Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 1185
    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->E()Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->D()Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_1

    .line 1187
    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->A()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->B()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 1188
    :cond_d
    invoke-static {v1, v4}, Landroid/support/v4/app/aa;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto/16 :goto_3

    .line 1198
    :cond_e
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    goto/16 :goto_5

    .line 1229
    :cond_f
    invoke-virtual {v8}, Landroid/support/v4/app/Fragment;->F()Z

    move-result v1

    move v2, v1

    goto :goto_6

    .line 1231
    :cond_10
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v2, v9}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/transition/Transition;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static {v3}, Landroid/support/v4/app/aa;->a([Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    goto :goto_8

    :cond_11
    move v2, v3

    goto/16 :goto_7

    :cond_12
    move-object v9, v1

    goto/16 :goto_4
.end method

.method private a(Landroid/support/v4/app/d;)V
    .locals 4

    .prologue
    .line 1379
    iget-object v0, p1, Landroid/support/v4/app/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1380
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1381
    iget-object v2, p1, Landroid/support/v4/app/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 1382
    iget-object v3, p1, Landroid/support/v4/app/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1383
    invoke-direct {p0, p1, v3, v2}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;ILjava/lang/Object;)V

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1385
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/app/d;ILjava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1357
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v1, v2

    .line 1358
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1359
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1360
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->R:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    iget v3, v0, Landroid/support/v4/app/Fragment;->H:I

    if-ne v3, p2, :cond_0

    .line 1362
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->J:Z

    if-eqz v3, :cond_1

    .line 1363
    iget-object v3, p1, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1364
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    const/4 v4, 0x1

    invoke-static {p3, v3, v4}, Landroid/support/v4/app/aa;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1366
    iget-object v3, p1, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1369
    :cond_1
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-static {p3, v3, v2}, Landroid/support/v4/app/aa;->a(Ljava/lang/Object;Landroid/view/View;Z)V

    .line 1371
    iget-object v3, p1, Landroid/support/v4/app/d;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1376
    :cond_2
    return-void
.end method

.method private a(Landroid/support/v4/app/d;Landroid/support/v4/f/a;Z)V
    .locals 5

    .prologue
    .line 1413
    iget-object v0, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1414
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1415
    iget-object v0, p0, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1416
    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1417
    invoke-virtual {p2, v1}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1418
    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1419
    if-eqz p3, :cond_0

    .line 1420
    iget-object v4, p1, Landroid/support/v4/app/d;->b:Landroid/support/v4/f/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1422
    :cond_0
    iget-object v4, p1, Landroid/support/v4/app/d;->b:Landroid/support/v4/f/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1425
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/app/d;Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .locals 10

    .prologue
    .line 1288
    new-instance v3, Landroid/support/v4/f/a;

    invoke-direct {v3}, Landroid/support/v4/f/a;-><init>()V

    .line 1289
    new-instance v5, Landroid/support/v4/f/a;

    invoke-direct {v5}, Landroid/support/v4/f/a;-><init>()V

    .line 1290
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1294
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v8, :cond_8

    .line 1295
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1296
    invoke-virtual {v3}, Landroid/support/v4/f/a;->clear()V

    .line 1297
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->t()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-static {v3, v1}, Landroid/support/v4/app/aa;->a(Ljava/util/Map;Landroid/view/View;)V

    if-eqz p4, :cond_3

    iget-object v1, p0, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v5}, Landroid/support/v4/app/a;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v4/f/a;Landroid/support/v4/f/a;)Landroid/support/v4/f/a;

    move-result-object v1

    move-object v2, v1

    .line 1300
    :goto_1
    if-eqz p4, :cond_5

    .line 1301
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->ai:Landroid/support/v4/app/cj;

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->ai:Landroid/support/v4/app/cj;

    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    .line 1305
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v2, v1}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;Landroid/support/v4/f/a;Z)V

    .line 1314
    :goto_2
    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/support/v4/f/a;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1316
    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/f/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1317
    if-eqz v1, :cond_1

    .line 1318
    iget-object v9, p1, Landroid/support/v4/app/d;->d:Landroid/support/v4/app/af;

    iput-object v1, v9, Landroid/support/v4/app/af;->a:Landroid/view/View;

    .line 1322
    :cond_1
    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1323
    if-eqz p4, :cond_7

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    .line 1326
    :goto_3
    if-eqz v0, :cond_2

    .line 1327
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1328
    invoke-virtual {v2}, Landroid/support/v4/f/a;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1329
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1330
    invoke-virtual {v2}, Landroid/support/v4/f/a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1331
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1297
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Landroid/support/v4/f/a;->a(Ljava/util/Collection;)Z

    :cond_4
    move-object v2, v3

    goto :goto_1

    .line 1307
    :cond_5
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    if-eqz v1, :cond_6

    .line 1308
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    iget-object v1, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    .line 1311
    :cond_6
    const/4 v1, 0x1

    invoke-static {p1, v2, v1}, Landroid/support/v4/app/a;->b(Landroid/support/v4/app/d;Landroid/support/v4/f/a;Z)V

    goto :goto_2

    .line 1323
    :cond_7
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ah:Landroid/support/v4/app/cj;

    goto :goto_3

    .line 1336
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;)V

    .line 1337
    return-void
.end method

.method private static a(Landroid/support/v4/app/d;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    .line 1402
    if-eqz p1, :cond_0

    .line 1403
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 1404
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1405
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1406
    iget-object v3, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/f/a;

    invoke-static {v3, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1409
    :cond_0
    return-void
.end method

.method private static a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1389
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1390
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/f/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1391
    invoke-virtual {p0, v0}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1392
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/f/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :cond_0
    :goto_1
    return-void

    .line 1390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1396
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/f/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 2

    .prologue
    .line 752
    if-eqz p1, :cond_0

    .line 753
    iget v0, p1, Landroid/support/v4/app/Fragment;->H:I

    .line 754
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->t()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 756
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 759
    :cond_0
    return-void
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 887
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 888
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 889
    if-eqz p2, :cond_1

    .line 890
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->A()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->E()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 910
    :goto_1
    return v0

    .line 894
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->B()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 895
    goto :goto_1

    .line 887
    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 899
    :cond_3
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_7

    .line 900
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 901
    if-eqz p2, :cond_4

    .line 902
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->C()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 903
    goto :goto_1

    .line 905
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->z()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->D()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v1

    .line 907
    goto :goto_1

    .line 899
    :cond_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 910
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/d;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1062
    new-instance v2, Landroid/support/v4/app/d;

    invoke-direct {v2, p0}, Landroid/support/v4/app/d;-><init>(Landroid/support/v4/app/a;)V

    .line 1067
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->o:Landroid/support/v4/app/j;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Landroid/support/v4/app/d;->e:Landroid/view/View;

    .line 1069
    new-instance v6, Landroid/support/v4/f/a;

    invoke-direct {v6}, Landroid/support/v4/f/a;-><init>()V

    .line 1070
    new-instance v7, Landroid/support/v4/f/a;

    invoke-direct {v7}, Landroid/support/v4/f/a;-><init>()V

    .line 1071
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v11

    .line 1075
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 1076
    invoke-virtual {p1, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1077
    invoke-direct/range {v0 .. v9}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/d;ZLandroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/f/a;Landroid/support/v4/f/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1075
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 1082
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 1083
    invoke-virtual {p2, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1084
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1085
    invoke-direct/range {v0 .. v9}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/d;ZLandroid/util/SparseArray;Landroid/util/SparseArray;Landroid/support/v4/f/a;Landroid/support/v4/f/a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1082
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1090
    :cond_2
    iget-object v0, v2, Landroid/support/v4/app/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1091
    const/4 v2, 0x0

    .line 1093
    :cond_3
    return-object v2
.end method

.method private static b(Landroid/support/v4/app/d;Landroid/support/v4/f/a;Z)V
    .locals 5

    .prologue
    .line 1429
    invoke-virtual {p1}, Landroid/support/v4/f/a;->size()I

    move-result v3

    .line 1430
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 1431
    invoke-virtual {p1, v2}, Landroid/support/v4/f/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1432
    invoke-virtual {p1, v2}, Landroid/support/v4/f/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v1

    .line 1433
    if-eqz p2, :cond_0

    .line 1434
    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/f/a;

    invoke-static {v4, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1436
    :cond_0
    iget-object v4, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/f/a;

    invoke-static {v4, v1, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/f/a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1439
    :cond_1
    return-void
.end method

.method private static b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 762
    if-eqz p1, :cond_0

    .line 763
    iget v0, p1, Landroid/support/v4/app/Fragment;->H:I

    .line 764
    if-eqz v0, :cond_0

    .line 765
    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 768
    :cond_0
    return-void
.end method

.method private b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    move-object v4, v0

    .line 782
    :goto_0
    if-eqz v4, :cond_5

    .line 783
    iget v0, v4, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_0

    .line 821
    :goto_1
    iget-object v0, v4, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v4, v0

    goto :goto_0

    .line 785
    :pswitch_0
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 788
    :pswitch_1
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 789
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v1, v1, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    move v1, v2

    move-object v3, v0

    .line 790
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 792
    if-eqz v3, :cond_0

    iget v5, v0, Landroid/support/v4/app/Fragment;->H:I

    iget v6, v3, Landroid/support/v4/app/Fragment;->H:I

    if-ne v5, v6, :cond_1

    .line 793
    :cond_0
    if-ne v0, v3, :cond_2

    .line 794
    const/4 v3, 0x0

    .line 790
    :cond_1
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 796
    :cond_2
    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_3

    :cond_3
    move-object v3, v0

    .line 801
    :cond_4
    invoke-static {p2, v3}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 805
    :pswitch_2
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 808
    :pswitch_3
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 811
    :pswitch_4
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 814
    :pswitch_5
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 817
    :pswitch_6
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 824
    :cond_5
    invoke-static {p1, p2, v2}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 825
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 826
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 828
    :cond_6
    return-void

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a(ZLandroid/support/v4/app/d;Landroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/support/v4/app/d;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 915
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    .line 916
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "popFromBackStack: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v0, Landroid/support/v4/f/f;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/f/f;-><init>(Ljava/lang/String;)V

    .line 918
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 919
    const-string v0, "  "

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 922
    :cond_0
    if-nez p2, :cond_3

    .line 923
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 924
    :cond_1
    invoke-direct {p0, p3, p4, v8}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/d;

    move-result-object p2

    .line 930
    :cond_2
    :goto_0
    invoke-virtual {p0, v9}, Landroid/support/v4/app/a;->a(I)V

    .line 932
    if-eqz p2, :cond_4

    move v6, v2

    .line 933
    :goto_1
    if-eqz p2, :cond_5

    move v1, v2

    .line 934
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/c;

    move-object v5, v0

    .line 935
    :goto_3
    if-eqz v5, :cond_a

    .line 936
    if-eqz p2, :cond_6

    move v4, v2

    .line 937
    :goto_4
    if-eqz p2, :cond_7

    move v0, v2

    .line 938
    :goto_5
    iget v3, v5, Landroid/support/v4/app/c;->c:I

    packed-switch v3, :pswitch_data_0

    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v5, Landroid/support/v4/app/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_3
    if-nez p1, :cond_2

    .line 927
    iget-object v0, p0, Landroid/support/v4/app/a;->u:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/a;->t:Ljava/util/ArrayList;

    invoke-static {p2, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 932
    :cond_4
    iget v0, p0, Landroid/support/v4/app/a;->j:I

    move v6, v0

    goto :goto_1

    .line 933
    :cond_5
    iget v0, p0, Landroid/support/v4/app/a;->i:I

    move v1, v0

    goto :goto_2

    .line 936
    :cond_6
    iget v0, v5, Landroid/support/v4/app/c;->g:I

    move v4, v0

    goto :goto_4

    .line 937
    :cond_7
    iget v0, v5, Landroid/support/v4/app/c;->h:I

    goto :goto_5

    .line 940
    :pswitch_0
    iget-object v3, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 941
    iput v0, v3, Landroid/support/v4/app/Fragment;->Q:I

    .line 942
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-static {v1}, Landroid/support/v4/app/p;->d(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, v6}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;II)V

    .line 994
    :cond_8
    :goto_6
    iget-object v0, v5, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;

    move-object v5, v0

    .line 995
    goto :goto_3

    .line 946
    :pswitch_1
    iget-object v3, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 947
    if-eqz v3, :cond_9

    .line 948
    iput v0, v3, Landroid/support/v4/app/Fragment;->Q:I

    .line 949
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-static {v1}, Landroid/support/v4/app/p;->d(I)I

    move-result v7

    invoke-virtual {v0, v3, v7, v6}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;II)V

    .line 952
    :cond_9
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    move v3, v2

    .line 953
    :goto_7
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 954
    iget-object v0, v5, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 955
    iput v4, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 956
    iget-object v7, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v7, v0, v2}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 953
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 961
    :pswitch_2
    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 962
    iput v4, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 963
    iget-object v3, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_6

    .line 966
    :pswitch_3
    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 967
    iput v4, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 968
    iget-object v3, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-static {v1}, Landroid/support/v4/app/p;->d(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/support/v4/app/p;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 972
    :pswitch_4
    iget-object v3, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 973
    iput v0, v3, Landroid/support/v4/app/Fragment;->Q:I

    .line 974
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-static {v1}, Landroid/support/v4/app/p;->d(I)I

    move-result v4

    invoke-virtual {v0, v3, v4, v6}, Landroid/support/v4/app/p;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 978
    :pswitch_5
    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 979
    iput v4, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 980
    iget-object v3, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-static {v1}, Landroid/support/v4/app/p;->d(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/support/v4/app/p;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 984
    :pswitch_6
    iget-object v0, v5, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 985
    iput v4, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 986
    iget-object v3, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-static {v1}, Landroid/support/v4/app/p;->d(I)I

    move-result v4

    invoke-virtual {v3, v0, v4, v6}, Landroid/support/v4/app/p;->d(Landroid/support/v4/app/Fragment;II)V

    goto :goto_6

    .line 997
    :cond_a
    if-eqz p1, :cond_b

    .line 998
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget v2, v2, Landroid/support/v4/app/p;->n:I

    invoke-static {v1}, Landroid/support/v4/app/p;->d(I)I

    move-result v1

    invoke-virtual {v0, v2, v1, v6, v8}, Landroid/support/v4/app/p;->a(IIIZ)V

    .line 1000
    if-eqz p2, :cond_b

    .line 1001
    invoke-direct {p0, p2, p3, p4, v8}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 1002
    const/4 p2, 0x0

    .line 1006
    :cond_b
    iget v0, p0, Landroid/support/v4/app/a;->o:I

    if-ltz v0, :cond_c

    .line 1007
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget v1, p0, Landroid/support/v4/app/a;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/p;->c(I)V

    .line 1008
    iput v9, p0, Landroid/support/v4/app/a;->o:I

    .line 1010
    :cond_c
    return-object p2

    .line 938
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a()Landroid/support/v4/app/z;
    .locals 2

    .prologue
    .line 542
    iget-boolean v0, p0, Landroid/support/v4/app/a;->l:Z

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    .line 547
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    .line 548
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 406
    return-object p0
.end method

.method public final a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 411
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V

    .line 456
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/c;->c:I

    .line 457
    iput-object p1, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 458
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/c;)V

    .line 460
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;
    .locals 2

    .prologue
    .line 400
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 401
    return-object p0
.end method

.method final a(I)V
    .locals 6

    .prologue
    .line 589
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-nez v0, :cond_1

    .line 611
    :cond_0
    return-void

    .line 592
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    move-object v2, v0

    .line 595
    :goto_0
    if-eqz v2, :cond_0

    .line 596
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    .line 597
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->B:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->B:I

    .line 598
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_3
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 602
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_5

    .line 603
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 604
    iget v3, v0, Landroid/support/v4/app/Fragment;->B:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->B:I

    .line 605
    sget-boolean v3, Landroid/support/v4/app/p;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_4
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 609
    :cond_5
    iget-object v0, v2, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v2, v0

    goto :goto_0
.end method

.method final a(Landroid/support/v4/app/c;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    if-nez v0, :cond_0

    .line 386
    iput-object p1, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/c;

    iput-object p1, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    .line 392
    :goto_0
    iget v0, p0, Landroid/support/v4/app/a;->e:I

    iput v0, p1, Landroid/support/v4/app/c;->e:I

    .line 393
    iget v0, p0, Landroid/support/v4/app/a;->f:I

    iput v0, p1, Landroid/support/v4/app/c;->f:I

    .line 394
    iget v0, p0, Landroid/support/v4/app/a;->g:I

    iput v0, p1, Landroid/support/v4/app/c;->g:I

    .line 395
    iget v0, p0, Landroid/support/v4/app/a;->h:I

    iput v0, p1, Landroid/support/v4/app/c;->h:I

    .line 396
    iget v0, p0, Landroid/support/v4/app/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/a;->d:I

    .line 397
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/c;

    iput-object v0, p1, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/c;

    iput-object p1, v0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    .line 390
    iput-object p1, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/c;

    goto :goto_0
.end method

.method public final a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3

    .prologue
    .line 841
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    move-object v2, v0

    .line 842
    :goto_0
    if-eqz v2, :cond_1

    .line 843
    iget v0, v2, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_0

    .line 872
    :goto_1
    iget-object v0, v2, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v2, v0

    goto :goto_0

    .line 845
    :pswitch_0
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 848
    :pswitch_1
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_0

    .line 850
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    .line 849
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 853
    :cond_0
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 856
    :pswitch_2
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 859
    :pswitch_3
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 862
    :pswitch_4
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 865
    :pswitch_5
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 868
    :pswitch_6
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p1, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 875
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/support/v4/app/a;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 876
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 877
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 879
    :cond_2
    return-void

    .line 843
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 259
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 262
    if-eqz p3, :cond_8

    .line 263
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/a;->o:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 265
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/a;->n:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    iget v0, p0, Landroid/support/v4/app/a;->i:I

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget v0, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget v0, p0, Landroid/support/v4/app/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    :cond_0
    iget v0, p0, Landroid/support/v4/app/a;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/a;->f:I

    if-eqz v0, :cond_2

    .line 273
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    iget v0, p0, Landroid/support/v4/app/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Landroid/support/v4/app/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    :cond_2
    iget v0, p0, Landroid/support/v4/app/a;->g:I

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v4/app/a;->h:I

    if-eqz v0, :cond_4

    .line 279
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget v0, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget v0, p0, Landroid/support/v4/app/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :cond_4
    iget v0, p0, Landroid/support/v4/app/a;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 285
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    iget v0, p0, Landroid/support/v4/app/a;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 290
    :cond_6
    iget v0, p0, Landroid/support/v4/app/a;->r:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 291
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Landroid/support/v4/app/a;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    if-eqz v0, :cond_10

    .line 299
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    move v2, v1

    move-object v3, v0

    .line 303
    :goto_0
    if-eqz v3, :cond_10

    .line 305
    iget v0, v3, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_0

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "cmd="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Landroid/support/v4/app/c;->c:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 317
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 319
    if-eqz p3, :cond_c

    .line 320
    iget v0, v3, Landroid/support/v4/app/c;->e:I

    if-nez v0, :cond_9

    iget v0, v3, Landroid/support/v4/app/c;->f:I

    if-eqz v0, :cond_a

    .line 321
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget v0, v3, Landroid/support/v4/app/c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget v0, v3, Landroid/support/v4/app/c;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    :cond_a
    iget v0, v3, Landroid/support/v4/app/c;->g:I

    if-nez v0, :cond_b

    iget v0, v3, Landroid/support/v4/app/c;->h:I

    if-eqz v0, :cond_c

    .line 327
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget v0, v3, Landroid/support/v4/app/c;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget v0, v3, Landroid/support/v4/app/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    :cond_c
    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move v0, v1

    .line 334
    :goto_2
    iget-object v5, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    .line 335
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-object v5, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 337
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    :goto_3
    iget-object v5, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 306
    :pswitch_0
    const-string v0, "NULL"

    goto/16 :goto_1

    .line 307
    :pswitch_1
    const-string v0, "ADD"

    goto/16 :goto_1

    .line 308
    :pswitch_2
    const-string v0, "REPLACE"

    goto/16 :goto_1

    .line 309
    :pswitch_3
    const-string v0, "REMOVE"

    goto/16 :goto_1

    .line 310
    :pswitch_4
    const-string v0, "HIDE"

    goto/16 :goto_1

    .line 311
    :pswitch_5
    const-string v0, "SHOW"

    goto/16 :goto_1

    .line 312
    :pswitch_6
    const-string v0, "DETACH"

    goto/16 :goto_1

    .line 313
    :pswitch_7
    const-string v0, "ATTACH"

    goto/16 :goto_1

    .line 339
    :cond_d
    if-nez v0, :cond_e

    .line 340
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :cond_e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 343
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 348
    :cond_f
    iget-object v3, v3, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    .line 349
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 350
    goto/16 :goto_0

    .line 352
    :cond_10
    return-void

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->a(Z)I

    move-result v0

    return v0
.end method

.method public final b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;
    .locals 2

    .prologue
    .line 446
    if-nez p1, :cond_0

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/a;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 451
    return-object p0
.end method

.method public final b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;
    .locals 2

    .prologue
    .line 482
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V

    .line 483
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/c;->c:I

    .line 484
    iput-object p1, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 485
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/c;)V

    .line 487
    return-object p0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->a(Z)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;
    .locals 2

    .prologue
    .line 491
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V

    .line 492
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/c;->c:I

    .line 493
    iput-object p1, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 494
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/c;)V

    .line 496
    return-object p0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1026
    iget v0, p0, Landroid/support/v4/app/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final run()V
    .locals 14

    .prologue
    .line 640
    sget-boolean v0, Landroid/support/v4/app/p;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Run: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v0, :cond_1

    .line 643
    iget v0, p0, Landroid/support/v4/app/a;->o:I

    if-gez v0, :cond_1

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(I)V

    .line 650
    const/4 v2, 0x0

    .line 651
    const/4 v1, 0x0

    .line 652
    const/4 v0, 0x0

    .line 653
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    const-string v3, "L"

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 654
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 655
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 657
    invoke-direct {p0, v1, v0}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 659
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_14

    .line 660
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/support/v4/app/a;->b(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Landroid/support/v4/app/d;

    move-result-object v2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    .line 664
    :goto_0
    if-eqz v10, :cond_4

    const/4 v0, 0x0

    move v7, v0

    .line 665
    :goto_1
    if-eqz v10, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 666
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/c;

    move-object v6, v0

    .line 667
    :goto_3
    if-eqz v6, :cond_11

    .line 668
    if-eqz v10, :cond_6

    const/4 v0, 0x0

    move v5, v0

    .line 669
    :goto_4
    if-eqz v10, :cond_7

    const/4 v0, 0x0

    move v2, v0

    .line 670
    :goto_5
    iget v0, v6, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v6, Landroid/support/v4/app/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_4
    iget v0, p0, Landroid/support/v4/app/a;->j:I

    move v7, v0

    goto :goto_1

    .line 665
    :cond_5
    iget v0, p0, Landroid/support/v4/app/a;->i:I

    move v1, v0

    goto :goto_2

    .line 668
    :cond_6
    iget v0, v6, Landroid/support/v4/app/c;->e:I

    move v5, v0

    goto :goto_4

    .line 669
    :cond_7
    iget v0, v6, Landroid/support/v4/app/c;->f:I

    move v2, v0

    goto :goto_5

    .line 672
    :pswitch_0
    iget-object v0, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 673
    iput v5, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 674
    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 737
    :cond_8
    :goto_6
    iget-object v0, v6, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v6, v0

    .line 738
    goto :goto_3

    .line 677
    :pswitch_1
    iget-object v3, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 678
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    .line 679
    const/4 v0, 0x0

    move-object v4, v3

    move v3, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_10

    .line 680
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v0, v0, Landroid/support/v4/app/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 681
    sget-boolean v11, Landroid/support/v4/app/p;->a:Z

    if-eqz v11, :cond_9

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "OP_REPLACE: adding="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " old="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_9
    if-eqz v4, :cond_a

    iget v11, v0, Landroid/support/v4/app/Fragment;->H:I

    iget v12, v4, Landroid/support/v4/app/Fragment;->H:I

    if-ne v11, v12, :cond_b

    .line 684
    :cond_a
    if-ne v0, v4, :cond_c

    .line 685
    const/4 v4, 0x0

    iput-object v4, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 679
    :cond_b
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 687
    :cond_c
    iget-object v11, v6, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-nez v11, :cond_d

    .line 688
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v6, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    .line 690
    :cond_d
    iget-object v11, v6, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    iput v2, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 692
    iget-boolean v11, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v11, :cond_e

    .line 693
    iget v11, v0, Landroid/support/v4/app/Fragment;->B:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v0, Landroid/support/v4/app/Fragment;->B:I

    .line 694
    sget-boolean v11, Landroid/support/v4/app/p;->a:Z

    if-eqz v11, :cond_e

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Bump nesting of "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_e
    iget-object v11, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v11, v0, v1, v7}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_8

    :cond_f
    move-object v4, v3

    .line 702
    :cond_10
    if-eqz v4, :cond_8

    .line 703
    iput v5, v4, Landroid/support/v4/app/Fragment;->Q:I

    .line 704
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_6

    .line 708
    :pswitch_2
    iget-object v0, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 709
    iput v2, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 710
    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/p;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 713
    :pswitch_3
    iget-object v0, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 714
    iput v2, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 715
    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/p;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 718
    :pswitch_4
    iget-object v0, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 719
    iput v5, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 720
    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/p;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 723
    :pswitch_5
    iget-object v0, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 724
    iput v2, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 725
    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/p;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 728
    :pswitch_6
    iget-object v0, v6, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/Fragment;

    .line 729
    iput v5, v0, Landroid/support/v4/app/Fragment;->Q:I

    .line 730
    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v2, v0, v1, v7}, Landroid/support/v4/app/p;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_6

    .line 740
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget-object v2, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    iget v2, v2, Landroid/support/v4/app/p;->n:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v7, v3}, Landroid/support/v4/app/p;->a(IIIZ)V

    .line 742
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v0, :cond_12

    .line 743
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/p;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/p;->b(Landroid/support/v4/app/a;)V

    .line 746
    :cond_12
    if-eqz v10, :cond_13

    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, v10, v9, v8, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/d;Landroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 749
    :cond_13
    return-void

    :cond_14
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    goto/16 :goto_0

    :cond_15
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    goto/16 :goto_0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 243
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget v1, p0, Landroid/support/v4/app/a;->o:I

    if-ltz v1, :cond_0

    .line 246
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget v1, p0, Landroid/support/v4/app/a;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 250
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
