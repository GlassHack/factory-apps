.class final Lcom/google/maps/api/android/lib6/gmm6/o/dc;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;

.field private q:Z

.field private r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

.field private s:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->p:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->q:Z

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->k:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->l:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->n:Z

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->m:I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->s:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/o/dc;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z

    return v0
.end method

.method private i()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/db;->a()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b(Lcom/google/maps/api/android/lib6/gmm6/o/dc;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 23

    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/o/db;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->s:Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/db;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move v7, v10

    move-object/from16 v17, v4

    move v10, v12

    move v12, v14

    move v14, v5

    move-object v5, v8

    move v8, v11

    move v11, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v22, v6

    move v6, v9

    move/from16 v9, v22

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v18

    monitor-enter v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->a:Z

    if-eqz v4, :cond_0

    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v5

    monitor-enter v5

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j()V

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->p:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->p:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move v5, v14

    move/from16 v16, v15

    move v14, v12

    move v15, v13

    move v12, v10

    move v13, v11

    move v10, v7

    move v11, v8

    move-object v8, v4

    move/from16 v22, v9

    move v9, v6

    move/from16 v6, v22

    :goto_2
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_1a

    :try_start_4
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v8, 0x0

    move v7, v10

    move v10, v12

    move v12, v14

    move v14, v5

    move-object v5, v8

    move v8, v11

    move v11, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v22, v9

    move v9, v6

    move/from16 v6, v22

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->d:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->c:Z

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->c:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->c:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->d:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->notifyAll()V

    move/from16 v16, v4

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j:Z

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j:Z

    const/4 v8, 0x1

    :cond_2
    if-eqz v12, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j()V

    const/4 v12, 0x0

    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    if-eqz v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i()V

    :cond_4
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    if-nez v4, :cond_d

    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_5

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j()V

    :cond_6
    if-eqz v16, :cond_7

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b()V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->e:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    if-eqz v4, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i()V

    :cond_8
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->f:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->e:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    if-eqz v9, :cond_b

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->o:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->l()Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    if-nez v4, :cond_c

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    if-eqz v4, :cond_2d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    if-nez v4, :cond_2d

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    const/4 v14, 0x1

    const/4 v13, 0x1

    const/4 v11, 0x1

    move v4, v11

    move v11, v13

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->q:Z

    if-eqz v13, :cond_2c

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->k:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->l:I

    const/4 v7, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->q:Z

    :goto_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->n:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    move v14, v12

    move/from16 v16, v15

    move v12, v7

    move v15, v11

    move v11, v8

    move-object v8, v5

    move v5, v13

    move v13, v10

    move v10, v6

    move v6, v9

    move v9, v4

    goto/16 :goto_2

    :cond_d
    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->d(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Z

    move-result v4

    goto/16 :goto_4

    :cond_e
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_f

    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    move-object/from16 v16, v0

    if-nez v16, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iput-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v4, 0x1

    :goto_8
    if-eqz v4, :cond_c

    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->a()V

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v4

    check-cast v4, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v16, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iput-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v16, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v0, v16

    if-ne v4, v0, :cond_13

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "eglGetDisplay failed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v4

    :try_start_7
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b(Lcom/google/maps/api/android/lib6/gmm6/o/dc;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v18

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v5

    monitor-enter v5

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i()V

    invoke-direct/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j()V

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v4

    :cond_10
    :try_start_a
    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->c()V

    iget-boolean v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->a:Z

    move/from16 v16, v0

    if-eqz v16, :cond_11

    const/4 v4, 0x1

    goto :goto_8

    :cond_11
    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->b:Lcom/google/maps/api/android/lib6/gmm6/o/dc;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->j:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_12
    const/4 v4, 0x0

    goto :goto_8

    :cond_13
    const/4 v4, 0x2

    :try_start_b
    new-array v4, v4, [I

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v16, v0

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v4

    if-nez v4, :cond_14

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "eglInitialize failed"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    iget-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    if-nez v4, :cond_17

    const/4 v4, 0x0

    iput-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    iput-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->f:Ljavax/microedition/khronos/egl/EGLContext;

    :goto_9
    iget-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->f:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v4, :cond_15

    iget-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v16, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v0, v16

    if-ne v4, v0, :cond_16

    :cond_15
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->f:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v4, "createContext"

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/db;->a(Ljava/lang/String;I)V

    :cond_16
    const/4 v4, 0x0

    iput-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/e/c/a;->b()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v4, 0x1

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    const/4 v15, 0x1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_5

    :cond_17
    :try_start_d
    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->a(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/cm;

    move-result-object v16

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/cm;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->b(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/cz;

    move-result-object v4

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v16, v0

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v4, v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/cz;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v4

    iput-object v4, v15, Lcom/google/maps/api/android/lib6/gmm6/o/db;->f:Ljavax/microedition/khronos/egl/EGLContext;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_9

    :cond_18
    move v13, v11

    move v11, v4

    :cond_19
    :try_start_e
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_1

    :cond_1a
    if-eqz v5, :cond_2b

    :try_start_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v4, :cond_1b

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "egl not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1b
    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "eglDisplay not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1c
    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v4, :cond_1d

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "mEglConfig not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1d
    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/o/db;->a()V

    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    if-eqz v4, :cond_1f

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->c(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/da;

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/da;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    :goto_a
    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_1e

    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v18, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_20

    :cond_1e
    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    const/4 v4, 0x0

    :goto_b
    if-nez v4, :cond_22

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v7

    monitor-enter v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v4, 0x1

    :try_start_10
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->f:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move v7, v10

    move v10, v12

    move v12, v14

    move v14, v5

    move-object v5, v8

    move v8, v11

    move v11, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v22, v9

    move v9, v6

    move/from16 v6, v22

    goto/16 :goto_0

    :cond_1f
    const/4 v4, 0x0

    :try_start_11
    iput-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_a

    :cond_20
    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->f:Ljavax/microedition/khronos/egl/EGLContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-interface {v4, v0, v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v7, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    const/4 v4, 0x0

    goto :goto_b

    :cond_21
    const/4 v4, 0x1

    goto :goto_b

    :catchall_3
    move-exception v4

    monitor-exit v7

    throw v4

    :cond_22
    const/4 v4, 0x0

    move v7, v4

    :goto_c
    if-eqz v15, :cond_2a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    iget-object v5, v4, Lcom/google/maps/api/android/lib6/gmm6/o/db;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v5}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v5

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/db;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    if-eqz v4, :cond_23

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->H()Lcom/google/maps/api/android/lib6/gmm6/o/cs;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->I()I

    :cond_23
    move-object v0, v5

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v4, v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v15, 0x0

    move-object v5, v4

    :goto_d
    if-eqz v16, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    if-eqz v4, :cond_24

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->e(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/l;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/db;->e:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v16, v0

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_24
    const/16 v16, 0x0

    :cond_25
    if-eqz v13, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    if-eqz v4, :cond_26

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->e(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/l;

    move-result-object v4

    invoke-virtual {v4, v5, v10, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_26
    const/4 v13, 0x0

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/maps/api/android/lib6/gmm6/o/cv;

    if-eqz v4, :cond_28

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->e(Lcom/google/maps/api/android/lib6/gmm6/o/cv;)Lcom/google/maps/api/android/lib6/gmm6/o/l;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/o/l;->b(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->r:Lcom/google/maps/api/android/lib6/gmm6/o/db;

    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/db;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/o/db;->d:Ljavax/microedition/khronos/egl/EGLSurface;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v17

    if-nez v17, :cond_29

    iget-object v4, v4, Lcom/google/maps/api/android/lib6/gmm6/o/db;->b:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    :goto_e
    sparse-switch v4, :sswitch_data_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v17

    monitor-enter v17
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const/4 v4, 0x1

    :try_start_12
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->f:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :goto_f
    :sswitch_0
    if-eqz v12, :cond_2f

    const/4 v4, 0x1

    :goto_10
    move v6, v9

    move-object/from16 v17, v5

    move v9, v4

    move-object v5, v8

    move v8, v11

    move v11, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v22, v12

    move v12, v14

    move v14, v7

    move v7, v10

    move/from16 v10, v22

    goto/16 :goto_0

    :cond_29
    const/16 v4, 0x3000

    goto :goto_e

    :sswitch_1
    const/4 v14, 0x1

    goto :goto_f

    :catchall_4
    move-exception v4

    :try_start_13
    monitor-exit v17

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_5
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2a
    move-object/from16 v5, v17

    goto/16 :goto_d

    :cond_2b
    move v7, v5

    goto/16 :goto_c

    :cond_2c
    move v13, v14

    move/from16 v22, v7

    move v7, v10

    move v10, v4

    move v4, v6

    move/from16 v6, v22

    goto/16 :goto_7

    :cond_2d
    move v4, v11

    move v11, v13

    goto/16 :goto_6

    :cond_2e
    move/from16 v16, v4

    goto/16 :goto_3

    :cond_2f
    move v4, v6

    goto :goto_10

    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private l()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->e:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->f:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->k:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->l:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->n:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->m:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->m:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->m:I

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(II)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->k:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->o:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->l()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->n:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->e:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->e:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->c:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->o:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->a:Z

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dc;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->a(Lcom/google/maps/api/android/lib6/gmm6/o/dc;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->a(Lcom/google/maps/api/android/lib6/gmm6/o/dc;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_1
    const-string v1, "MAP"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->a(Lcom/google/maps/api/android/lib6/gmm6/o/dc;)V

    throw v0

    :catch_2
    move-exception v0

    :try_start_2
    const-string v1, "MAP"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/o/cv;->J()Lcom/google/maps/api/android/lib6/gmm6/o/dd;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/dd;->a(Lcom/google/maps/api/android/lib6/gmm6/o/dc;)V

    goto :goto_0
.end method
