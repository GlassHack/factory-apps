.class public final Lcom/google/android/location/reporting/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/reporting/w;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/location/reporting/config/h;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 92
    iput-object p1, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/google/android/location/reporting/config/h;->a(Landroid/content/Context;)Lcom/google/android/location/reporting/config/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/u;->b:Lcom/google/android/location/reporting/config/h;

    .line 96
    sget-object v0, Lcom/google/android/location/d/g;->e:Lcom/google/android/location/d/g;

    invoke-static {v0, p1}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    .line 98
    iget v0, v0, Lcom/google/android/location/d/f;->d:I

    iput v0, p0, Lcom/google/android/location/reporting/u;->c:I

    .line 99
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/gms/common/server/ClientContext;
    .locals 5

    .prologue
    .line 695
    new-instance v0, Lcom/google/android/gms/common/server/ClientContext;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/server/ClientContext;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v1, "https://www.googleapis.com/auth/userlocation.reporting"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/ClientContext;->a(Ljava/lang/String;)V

    .line 698
    return-object v0
.end method

.method private a()Lcom/google/android/ulr/ApiClientInfo;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tablet"

    .line 345
    :goto_0
    new-instance v1, Lcom/google/android/ulr/ApiClientInfo;

    invoke-direct {v1, v0}, Lcom/google/android/ulr/ApiClientInfo;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 343
    :cond_0
    const-string v0, "phone"

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 358
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 359
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/location/reporting/a/e;

    .line 362
    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->k:Z

    if-eqz v0, :cond_4

    iget-wide v0, v10, Lcom/google/android/location/reporting/a/e;->l:D

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->t:Z

    if-eqz v0, :cond_5

    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->u:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_2
    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->i:Z

    if-eqz v0, :cond_6

    iget v0, v10, Lcom/google/android/location/reporting/a/e;->j:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->m:Z

    if-eqz v0, :cond_7

    iget v0, v10, Lcom/google/android/location/reporting/a/e;->n:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4
    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->x:Z

    if-eqz v0, :cond_8

    iget v0, v10, Lcom/google/android/location/reporting/a/e;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_5
    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->v:Z

    if-eqz v0, :cond_9

    iget-object v6, v10, Lcom/google/android/location/reporting/a/e;->w:Ljava/lang/String;

    :goto_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->a:Z

    if-eqz v0, :cond_c

    iget-object v7, v10, Lcom/google/android/location/reporting/a/e;->b:Lcom/google/android/location/reporting/a/f;

    iget-boolean v0, v7, Lcom/google/android/location/reporting/a/f;->a:Z

    if-eqz v0, :cond_a

    iget v0, v7, Lcom/google/android/location/reporting/a/f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    iget-boolean v8, v7, Lcom/google/android/location/reporting/a/f;->c:Z

    if-eqz v8, :cond_b

    iget v7, v7, Lcom/google/android/location/reporting/a/f;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_8
    move-object v8, v7

    move-object v7, v0

    :goto_9
    iget-boolean v0, v10, Lcom/google/android/location/reporting/a/e;->g:Z

    if-eqz v0, :cond_d

    iget v0, v10, Lcom/google/android/location/reporting/a/e;->h:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_a
    new-instance v0, Lcom/google/android/ulr/ApiLocation;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/ulr/ApiLocation;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-boolean v1, v10, Lcom/google/android/location/reporting/a/e;->r:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v10, Lcom/google/android/location/reporting/a/e;->s:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v2, v1

    :goto_b
    iget-boolean v1, v10, Lcom/google/android/location/reporting/a/e;->p:Z

    if-eqz v1, :cond_f

    iget v1, v10, Lcom/google/android/location/reporting/a/e;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    :goto_c
    const/4 v1, 0x0

    iget-boolean v4, v10, Lcom/google/android/location/reporting/a/e;->c:Z

    if-eqz v4, :cond_16

    iget v1, v10, Lcom/google/android/location/reporting/a/e;->d:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "unknown"

    move-object v4, v1

    :goto_d
    const/4 v5, 0x0

    sget-object v1, Lcom/google/android/location/reporting/service/y;->O:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_15

    sget-object v1, Lcom/google/android/location/reporting/service/y;->P:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/google/android/ulr/ApiExperiment;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/google/android/ulr/ApiExperiment;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GCoreUlr"

    const/4 v7, 0x2

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GCoreUlr"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "experimentId: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v5

    :goto_e
    invoke-virtual {v10}, Lcom/google/android/location/reporting/a/e;->c()I

    move-result v5

    if-lez v5, :cond_10

    iget-object v5, v10, Lcom/google/android/location/reporting/a/e;->z:Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/location/reporting/u;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    :goto_f
    const-string v6, "GCoreUlr"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_10
    const-string v7, "GCoreUlr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found wifi scans: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v6, Lcom/google/android/ulr/ApiReadingInfo;

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/google/android/ulr/ApiReadingInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "GCoreUlr"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apiReadingInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v2, v10, Lcom/google/android/location/reporting/a/e;->e:Z

    if-eqz v2, :cond_12

    iget-wide v2, v10, Lcom/google/android/location/reporting/a/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_11
    if-nez v2, :cond_3

    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Location missing timestamp; source="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v10, Lcom/google/android/location/reporting/a/e;->d:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    new-instance v3, Lcom/google/android/ulr/ApiLocationReading;

    invoke-direct {v3, v1, v0, v6, v2}, Lcom/google/android/ulr/ApiLocationReading;-><init>(Ljava/util/ArrayList;Lcom/google/android/ulr/ApiLocation;Lcom/google/android/ulr/ApiReadingInfo;Ljava/lang/Long;)V

    .line 363
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 362
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_6

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_c
    const-string v0, "GCoreUlr"

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Location missing position; timestamp="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v14, v10, Lcom/google/android/location/reporting/a/e;->f:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; source="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v10, Lcom/google/android/location/reporting/a/e;->d:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_e
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_b

    :cond_f
    const/4 v1, 0x0

    move-object v3, v1

    goto/16 :goto_c

    :pswitch_0
    const-string v1, "wifi"

    move-object v4, v1

    goto/16 :goto_d

    :pswitch_1
    const-string v1, "cell"

    move-object v4, v1

    goto/16 :goto_d

    :pswitch_2
    const-string v1, "gps"

    move-object v4, v1

    goto/16 :goto_d

    :pswitch_3
    const-string v1, "unknown"

    move-object v4, v1

    goto/16 :goto_d

    :pswitch_4
    const-string v1, "manual"

    move-object v4, v1

    goto/16 :goto_d

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_10

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_13
    move-object v0, v11

    .line 367
    :cond_14
    return-object v0

    :cond_15
    move-object v1, v5

    goto/16 :goto_e

    :cond_16
    move-object v4, v1

    goto/16 :goto_d

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Landroid/accounts/Account;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 337
    invoke-static {p1}, Lcom/google/android/location/reporting/config/i;->a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/config/j;

    move-result-object v0

    iput-boolean v1, v0, Lcom/google/android/location/reporting/config/j;->g:Z

    iput-boolean v1, v0, Lcom/google/android/location/reporting/config/j;->d:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/location/reporting/config/j;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/config/j;->a()Lcom/google/android/location/reporting/config/i;

    move-result-object v0

    .line 339
    iget-object v1, p0, Lcom/google/android/location/reporting/u;->b:Lcom/google/android/location/reporting/config/h;

    const-string v2, "RealReportingServer(auth)"

    const-string v3, "auth_update"

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/location/reporting/config/h;->a(Ljava/lang/String;Lcom/google/android/location/reporting/config/i;Ljava/lang/String;)Z

    .line 340
    return-void
.end method

.method private static a(Lcom/android/d/aa;)V
    .locals 6

    .prologue
    const/4 v4, 0x6

    .line 627
    const-string v0, "GCoreUlr"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v3, p0, Lcom/android/d/aa;->a:Lcom/android/d/m;

    .line 632
    const-string v0, "GCoreUlr"

    invoke-static {v0, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    const-string v1, "GCoreUlr"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "VolleyError: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", response is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_5

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_2
    if-eqz v3, :cond_0

    .line 642
    const-string v0, "GCoreUlr"

    invoke-static {v0, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 643
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " networkResponse: status code is :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Lcom/android/d/m;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_3
    const/4 v2, 0x0

    .line 648
    :try_start_0
    iget-object v0, v3, Lcom/android/d/m;->b:[B

    if-eqz v0, :cond_9

    .line 649
    iget-object v0, v3, Lcom/android/d/m;->b:[B

    invoke-static {v0}, Lcom/google/android/gms/common/util/n;->a([B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 650
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v4, v3, Lcom/android/d/m;->b:[B

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 658
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 659
    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 674
    :catch_0
    move-exception v0

    .line 675
    :goto_3
    :try_start_2
    const-string v2, "GCoreUlr"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 676
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " io exception "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 679
    :cond_4
    if-eqz v1, :cond_0

    .line 681
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 682
    :catch_1
    move-exception v0

    .line 683
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " io exception: cannot close input stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    :cond_5
    const-string v0, "non-null"

    goto/16 :goto_1

    .line 652
    :cond_6
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in GZIP header, bad magic code"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 674
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 661
    :cond_7
    :try_start_5
    const-string v2, "GCoreUlr"

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 662
    const-string v2, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " networkResponse data is:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    move-object v2, v1

    .line 665
    :cond_9
    :try_start_6
    iget-object v0, v3, Lcom/android/d/m;->c:Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 666
    iget-object v0, v3, Lcom/android/d/m;->c:Ljava/util/Map;

    .line 667
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 668
    const-string v1, "GCoreUlr"

    const/4 v4, 0x6

    invoke-static {v1, v4}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 669
    const-string v4, "GCoreUlr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v1, " networkResponse header: "

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 674
    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    .line 679
    :cond_b
    if-eqz v2, :cond_0

    .line 681
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 682
    :catch_4
    move-exception v0

    .line 683
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " io exception: cannot close input stream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 679
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v2, :cond_c

    .line 681
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 684
    :cond_c
    :goto_6
    throw v0

    .line 682
    :catch_5
    move-exception v1

    .line 683
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " io exception: cannot close input stream "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/location/reporting/b/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 679
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_5
.end method

.method private static b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 481
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 534
    :goto_0
    return-object v0

    .line 485
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 487
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/i;

    .line 488
    iget-boolean v3, v0, Lcom/google/android/location/reporting/a/i;->a:Z

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/google/android/location/reporting/a/i;->c:Z

    if-eqz v3, :cond_2

    .line 492
    iget-boolean v3, v0, Lcom/google/android/location/reporting/a/i;->e:Z

    if-eqz v3, :cond_3

    .line 493
    iget v3, v0, Lcom/google/android/location/reporting/a/i;->f:I

    packed-switch v3, :pswitch_data_0

    .line 514
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/a/i;)V

    .line 515
    const-string v3, "GCoreUlr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Unknown value for wifi auth type: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/google/android/location/reporting/a/i;->f:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/reporting/b/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v4, v2

    .line 521
    :goto_2
    iget-boolean v3, v0, Lcom/google/android/location/reporting/a/i;->g:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/google/android/location/reporting/a/i;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 524
    :goto_3
    new-instance v6, Lcom/google/android/ulr/WifiStrengthProto;

    iget-wide v8, v0, Lcom/google/android/location/reporting/a/i;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v0, v0, Lcom/google/android/location/reporting/a/i;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v6, v3, v7, v0, v4}, Lcom/google/android/ulr/WifiStrengthProto;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 531
    :catch_0
    move-exception v0

    .line 532
    invoke-static {v0}, Lcom/google/android/location/reporting/b/j;->b(Ljava/lang/Exception;)V

    .line 533
    const-string v1, "GCoreUlr"

    const-string v3, "Best-effort Wifi scan conversion failed"

    invoke-static {v1, v3, v0}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 534
    goto :goto_0

    .line 495
    :pswitch_0
    :try_start_1
    const-string v3, "unknown"

    .line 496
    const-string v4, "GCoreUlr"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 497
    const-string v4, "GCoreUlr"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown wifi auth type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/google/android/location/reporting/a/i;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    goto :goto_2

    .line 502
    :pswitch_1
    const-string v3, "none"

    move-object v4, v3

    .line 503
    goto :goto_2

    .line 505
    :pswitch_2
    const-string v3, "wpaPsk"

    move-object v4, v3

    .line 506
    goto :goto_2

    .line 508
    :pswitch_3
    const-string v3, "wpaEap"

    move-object v4, v3

    .line 509
    goto :goto_2

    .line 511
    :pswitch_4
    const-string v3, "securedOther"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    .line 512
    goto :goto_2

    :cond_4
    move-object v3, v2

    .line 521
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 530
    goto/16 :goto_0

    :cond_6
    move-object v4, v3

    goto :goto_2

    .line 493
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Landroid/accounts/Account;)I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/location/reporting/u;->b:Lcom/google/android/location/reporting/config/h;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/config/h;->b(Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)Lcom/google/android/location/reporting/a;
    .locals 8

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/u;->c(Landroid/accounts/Account;)I

    move-result v0

    .line 112
    sget-object v2, Lcom/google/android/location/collectionlib/bi;->a:Ljava/lang/String;

    .line 117
    new-instance v1, Lcom/google/android/location/reporting/v;

    iget-object v3, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/google/android/location/reporting/v;-><init>(Landroid/content/Context;)V

    .line 123
    :try_start_0
    new-instance v4, Lcom/google/android/ulr/b;

    invoke-direct {v4, v1}, Lcom/google/android/ulr/b;-><init>(Lcom/google/android/gms/common/server/g;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/location/reporting/u;->a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v1

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/google/android/location/reporting/u;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v3, "settings/%1$s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_0

    const-string v0, "nlpVersion"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/google/android/ulr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "platform"

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/google/android/ulr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v0, v4, Lcom/google/android/ulr/b;->a:Lcom/google/android/gms/common/server/g;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-class v5, Lcom/google/android/ulr/ApiSettings;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiSettings;

    .line 130
    if-nez v0, :cond_2

    .line 131
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received null settings from server for account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/location/reporting/a/c;->a(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V

    .line 142
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    throw v0

    .line 134
    :cond_2
    :try_start_2
    invoke-static {p1, v0}, Lcom/google/android/location/reporting/a;->a(Landroid/accounts/Account;Lcom/google/android/ulr/ApiSettings;)Lcom/google/android/location/reporting/a;

    move-result-object v0

    .line 137
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V
    :try_end_2
    .catch Lcom/google/android/gms/auth/q; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/d/aa; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    return-object v0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    :try_start_3
    invoke-static {v0}, Lcom/google/android/location/reporting/u;->a(Lcom/android/d/aa;)V

    .line 145
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 146
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 147
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public final a(Landroid/accounts/Account;Lcom/google/android/location/reporting/a;)Lcom/google/android/location/reporting/a;
    .locals 9

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/u;->c(Landroid/accounts/Account;)I

    move-result v0

    .line 159
    sget-object v2, Lcom/google/android/location/collectionlib/bi;->a:Ljava/lang/String;

    .line 169
    new-instance v4, Lcom/google/android/ulr/ApiSettings;

    iget-object v1, p2, Lcom/google/android/location/reporting/a;->c:Ljava/lang/Boolean;

    iget-object v3, p2, Lcom/google/android/location/reporting/a;->a:Ljava/lang/Long;

    iget-object v5, p2, Lcom/google/android/location/reporting/a;->b:Ljava/lang/Boolean;

    invoke-direct {v4, v1, v3, v5}, Lcom/google/android/ulr/ApiSettings;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 174
    new-instance v1, Lcom/google/android/location/reporting/v;

    iget-object v3, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/google/android/location/reporting/v;-><init>(Landroid/content/Context;)V

    .line 177
    :try_start_0
    new-instance v5, Lcom/google/android/ulr/b;

    invoke-direct {v5, v1}, Lcom/google/android/ulr/b;-><init>(Lcom/google/android/gms/common/server/g;)V

    .line 178
    iget-object v1, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/location/reporting/u;->a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v1

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, p0, Lcom/google/android/location/reporting/u;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v3, "settings/%1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v6, :cond_0

    const-string v0, "nlpVersion"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v0, v6}, Lcom/google/android/ulr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "platform"

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/google/android/ulr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v0, v5, Lcom/google/android/ulr/b;->a:Lcom/google/android/gms/common/server/g;

    const/4 v2, 0x2

    const-class v5, Lcom/google/android/ulr/ApiSettings;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/ApiSettings;

    .line 184
    invoke-static {p1, v0}, Lcom/google/android/location/reporting/a;->a(Landroid/accounts/Account;Lcom/google/android/ulr/ApiSettings;)Lcom/google/android/location/reporting/a;

    move-result-object v0

    .line 185
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V

    .line 189
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :catchall_0
    move-exception v0

    throw v0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    :try_start_2
    invoke-static {v0}, Lcom/google/android/location/reporting/u;->a(Lcom/android/d/aa;)V

    .line 192
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 193
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 194
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final a(Landroid/accounts/Account;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;J)Lcom/google/android/location/reporting/a;
    .locals 15

    .prologue
    .line 206
    invoke-direct/range {p0 .. p1}, Lcom/google/android/location/reporting/u;->c(Landroid/accounts/Account;)I

    move-result v7

    .line 207
    invoke-direct {p0}, Lcom/google/android/location/reporting/u;->a()Lcom/google/android/ulr/ApiClientInfo;

    move-result-object v9

    .line 209
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string v3, "Must have at least 1 location to upload"

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 219
    const/4 v2, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    new-instance v6, Lcom/google/android/ulr/ApiReadingInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/google/android/ulr/ApiReadingInfo;-><init>(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    const-string v4, "unknown"

    :goto_3
    new-instance v12, Lcom/google/android/ulr/ApiActivity;

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v12, v3, v4}, Lcom/google/android/ulr/ApiActivity;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 209
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 219
    :pswitch_1
    const-string v4, "inVehicle"

    goto :goto_3

    :pswitch_2
    const-string v4, "onBicycle"

    goto :goto_3

    :pswitch_3
    const-string v4, "onFoot"

    goto :goto_3

    :pswitch_4
    const-string v4, "still"

    goto :goto_3

    :pswitch_5
    const-string v4, "tilting"

    goto :goto_3

    :pswitch_6
    const-string v4, "exitingVehicle"

    goto :goto_3

    :pswitch_7
    const-string v4, "walking"

    goto :goto_3

    :pswitch_8
    const-string v4, "running"

    goto :goto_3

    :cond_2
    new-instance v3, Lcom/google/android/ulr/ApiActivityReading;

    invoke-virtual {v2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v10, v6, v2}, Lcom/google/android/ulr/ApiActivityReading;-><init>(Ljava/util/ArrayList;Lcom/google/android/ulr/ApiReadingInfo;Ljava/lang/Long;)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v8, v5

    .line 220
    :goto_4
    invoke-static/range {p2 .. p2}, Lcom/google/android/location/reporting/u;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    .line 221
    new-instance v2, Lcom/google/android/ulr/ApiBatch;

    move-object/from16 v0, p4

    invoke-direct {v2, v8, v0, v10}, Lcom/google/android/ulr/ApiBatch;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 225
    new-instance v6, Lcom/google/android/ulr/ReportApiBatchRequest;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v2, v9, v3, v4}, Lcom/google/android/ulr/ReportApiBatchRequest;-><init>(Lcom/google/android/ulr/ApiBatch;Lcom/google/android/ulr/ApiClientInfo;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 227
    new-instance v2, Lcom/google/android/location/reporting/v;

    iget-object v3, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/location/reporting/v;-><init>(Landroid/content/Context;)V

    .line 230
    :try_start_0
    new-instance v4, Lcom/google/android/ulr/a;

    invoke-direct {v4, v2}, Lcom/google/android/ulr/a;-><init>(Lcom/google/android/gms/common/server/g;)V

    .line 231
    iget-object v2, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/android/location/reporting/u;->a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v3

    .line 233
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v5, p0, Lcom/google/android/location/reporting/u;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v9, Lcom/google/android/location/collectionlib/bi;->a:Ljava/lang/String;

    const-string v5, "reports/%1$s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_4

    const-string v2, "nlpVersion"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v2, v7}, Lcom/google/android/ulr/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    if-eqz v9, :cond_5

    const-string v2, "platform"

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v2, v7}, Lcom/google/android/ulr/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    iget-object v2, v4, Lcom/google/android/ulr/a;->a:Lcom/google/android/gms/common/server/g;

    const/4 v4, 0x1

    const-class v7, Lcom/google/android/ulr/ReportApiBatchReply;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v2

    check-cast v2, Lcom/google/android/ulr/ReportApiBatchReply;

    .line 237
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/ulr/ReportApiBatchReply;->b()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    if-lez v3, :cond_8

    invoke-static {v3}, Lcom/google/android/location/reporting/b/j;->b(I)V

    .line 239
    :cond_6
    :goto_5
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V

    .line 241
    invoke-virtual {v2}, Lcom/google/android/ulr/ReportApiBatchReply;->getSettings()Lcom/google/android/ulr/ApiSettings;

    move-result-object v2

    .line 244
    if-nez v2, :cond_7

    .line 246
    move-object/from16 v0, p4

    invoke-static {v10, v8, v0}, Lcom/google/android/location/reporting/b/j;->b(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 248
    :cond_7
    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/a;->a(Landroid/accounts/Account;Lcom/google/android/ulr/ApiSettings;)Lcom/google/android/location/reporting/a;

    move-result-object v2

    .line 258
    :goto_6
    return-object v2

    .line 237
    :cond_8
    if-gez v3, :cond_6

    rsub-int/lit8 v3, v3, 0x0

    invoke-static {v3}, Lcom/google/android/location/reporting/b/j;->c(I)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 249
    :catch_0
    move-exception v2

    .line 250
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V

    .line 251
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :catchall_0
    move-exception v2

    throw v2

    .line 237
    :cond_9
    :try_start_2
    invoke-static {v3}, Lcom/google/android/location/reporting/b/j;->d(I)V
    :try_end_2
    .catch Lcom/google/android/gms/auth/q; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/d/aa; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 252
    :catch_1
    move-exception v2

    .line 253
    :try_start_3
    invoke-static {v2}, Lcom/google/android/location/reporting/u;->a(Lcom/android/d/aa;)V

    .line 254
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .line 255
    invoke-virtual {v3, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 256
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    move-object v8, v2

    goto/16 :goto_4

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final b(Landroid/accounts/Account;)Lcom/google/android/location/reporting/a;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-direct {p0}, Lcom/google/android/location/reporting/u;->a()Lcom/google/android/ulr/ApiClientInfo;

    move-result-object v0

    .line 290
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/u;->c(Landroid/accounts/Account;)I

    move-result v2

    .line 291
    sget-object v5, Lcom/google/android/location/collectionlib/bi;->a:Ljava/lang/String;

    .line 294
    new-instance v4, Lcom/google/android/ulr/DeleteApiLocationsRequest;

    invoke-direct {v4, v0, v1, v1, v1}, Lcom/google/android/ulr/DeleteApiLocationsRequest;-><init>(Lcom/google/android/ulr/ApiClientInfo;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 301
    new-instance v0, Lcom/google/android/location/reporting/v;

    iget-object v1, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/v;-><init>(Landroid/content/Context;)V

    .line 307
    :try_start_0
    new-instance v6, Lcom/google/android/ulr/b;

    invoke-direct {v6, v0}, Lcom/google/android/ulr/b;-><init>(Lcom/google/android/gms/common/server/g;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/location/reporting/u;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/location/reporting/u;->a(Landroid/content/Context;Landroid/accounts/Account;)Lcom/google/android/gms/common/server/ClientContext;

    move-result-object v1

    .line 310
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p0, Lcom/google/android/location/reporting/u;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "deletes/%1$s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    const-string v0, "nlpVersion"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/google/android/ulr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-eqz v5, :cond_1

    const-string v0, "platform"

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/google/android/ulr/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v0, v6, Lcom/google/android/ulr/b;->a:Lcom/google/android/gms/common/server/g;

    const/4 v2, 0x1

    const-class v5, Lcom/google/android/ulr/DeleteApiLocationsReply;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/server/g;->a(Lcom/google/android/gms/common/server/ClientContext;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/ulr/DeleteApiLocationsReply;

    invoke-virtual {v0}, Lcom/google/android/ulr/DeleteApiLocationsReply;->getSettings()Lcom/google/android/ulr/ApiSettings;

    move-result-object v0

    .line 315
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V

    .line 316
    invoke-static {p1, v0}, Lcom/google/android/location/reporting/a;->a(Landroid/accounts/Account;Lcom/google/android/ulr/ApiSettings;)Lcom/google/android/location/reporting/a;
    :try_end_0
    .catch Lcom/google/android/gms/auth/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/d/aa; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 326
    return-object v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcom/google/android/location/reporting/u;->a(Landroid/accounts/Account;Z)V

    .line 319
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    throw v0

    .line 320
    :catch_1
    move-exception v0

    .line 321
    :try_start_2
    invoke-static {v0}, Lcom/google/android/location/reporting/u;->a(Lcom/android/d/aa;)V

    .line 322
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 323
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 324
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
