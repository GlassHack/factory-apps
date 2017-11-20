.class Lcom/android/systemui/recent/RecentTasksLoader$3;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 414
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 21
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 435
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v16

    .line 436
    .local v16, "origPri":I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 438
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 441
    .local v7, "am":Landroid/app/ActivityManager;
    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v7, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v19

    .line 443
    .local v19, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v15

    .line 444
    .local v15, "numTasks":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 447
    .local v10, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x1

    .line 448
    .local v9, "firstScreenful":Z
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 451
    .local v20, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v8, 0x0

    .line 452
    .local v8, "first":I
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_0
    if-ge v11, v15, :cond_0

    const/16 v1, 0x15

    if-ge v12, v1, :cond_0

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v20, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    .line 498
    if-eqz v9, :cond_1

    .line 500
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    .line 506
    :cond_1
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/systemui/recent/TaskDescription;

    invoke-direct {v2}, Lcom/android/systemui/recent/TaskDescription;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    invoke-static/range {v16 .. v16}, Landroid/os/Process;->setThreadPriority(I)V

    .line 513
    const/4 v1, 0x0

    return-object v1

    .line 456
    :cond_2
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 458
    .local v18, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 459
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 460
    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 464
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2, v10}, Lcom/android/systemui/recent/RecentTasksLoader;->access$800(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 452
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 469
    :cond_5
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v18

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v14

    .line 477
    .local v14, "item":Lcom/android/systemui/recent/TaskDescription;
    if-eqz v14, :cond_4

    .line 480
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v14}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 485
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    if-eqz v9, :cond_6

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$900(Lcom/android/systemui/recent/RecentTasksLoader;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 487
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v20, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    .line 488
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .restart local v20    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v9, 0x0

    .line 492
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 508
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "item":Lcom/android/systemui/recent/TaskDescription;
    .end local v18    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 482
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v14    # "item":Lcom/android/systemui/recent/TaskDescription;
    .restart local v18    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 414
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "values":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v3, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    aget-object v0, p1, v3

    .line 421
    .local v0, "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/RecentTasksLoader;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$602(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 428
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-static {v1, v3}, Lcom/android/systemui/recent/RecentTasksLoader;->access$502(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z

    .line 430
    .end local v0    # "newTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_2
    return-void
.end method
