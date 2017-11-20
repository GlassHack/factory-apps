.class public abstract Lcom/google/android/gms/internal/fn;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fn$c;,
        Lcom/google/android/gms/internal/fn$a;,
        Lcom/google/android/gms/internal/fn$b;,
        Lcom/google/android/gms/internal/fn$d;
    }
.end annotation


# static fields
.field static volatile Ox:Z


# instance fields
.field protected final LL:Z

.field protected final LP:I

.field protected final LQ:Ljava/lang/String;

.field private NS:Lcom/google/android/gms/common/data/DataHolder;

.field private NT:Landroid/database/Cursor;

.field private final On:Lcom/google/android/gms/internal/fn$d;

.field protected final Oo:Landroid/os/Bundle;

.field protected final Op:Landroid/os/Bundle;

.field protected final Oq:Z

.field protected final Or:Lcom/google/android/gms/internal/fh;

.field private Os:Z

.field private Ot:Lcom/google/android/gms/common/ConnectionResult;

.field private Ou:Lcom/google/android/gms/common/data/DataHolder;

.field private Ov:Z

.field private Ow:Ljava/lang/Exception;

.field private Oy:Z

.field private final Oz:Ljava/text/Collator;

.field protected final mContext:Landroid/content/Context;

.field private final to:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/fn;->Ox:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fn$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->to:Ljava/lang/Object;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->Oz:Ljava/text/Collator;

    iput-object p1, p0, Lcom/google/android/gms/internal/fn;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fn;->On:Lcom/google/android/gms/internal/fn$d;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/fn;->LL:Z

    iput p4, p0, Lcom/google/android/gms/internal/fn;->LP:I

    iput-object p5, p0, Lcom/google/android/gms/internal/fn;->Oo:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/internal/fn;->Op:Landroid/os/Bundle;

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Oq:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Oq:Z

    if-eqz v0, :cond_1

    :goto_1
    iput-object p7, p0, Lcom/google/android/gms/internal/fn;->LQ:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "aggregator"

    invoke-static {v0}, Lcom/google/android/gms/internal/fh;->aH(Ljava/lang/String;)Lcom/google/android/gms/internal/fh;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 p7, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/fh;->fV()Lcom/google/android/gms/internal/fh;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/fn$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/fn;
    .locals 8

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fo;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fn$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Search aggregation doesn\'t support filtering by gaia-id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fp;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fn$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Lcom/google/android/gms/internal/fn$c;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fn$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fn$c;->dJ(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fn$c;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gaia_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fn$c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fn$c;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gj()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gh()V

    return-void
.end method

.method private gf()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/fn$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fn$b;-><init>(Lcom/google/android/gms/internal/fn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fn$b;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PeopleAggregator"

    const-string v2, "Unable to start thread"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/fn;->a(Landroid/database/Cursor;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private gh()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Os:Z

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->j(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Ov:Z

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->j(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->NS:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->NS:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Ou:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Ou:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->NT:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->NT:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Oy:Z

    if-eqz v0, :cond_3

    monitor-exit v1

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Oy:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->On:Lcom/google/android/gms/internal/fn$d;

    const/16 v1, 0x8

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/gms/internal/fn$d;->a(ILandroid/os/Bundle;Lcom/google/android/gms/people/model/AggregatedPersonBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private gi()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->to:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Os:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Ov:Z

    if-nez v0, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Ot:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gh()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/fn$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fn$a;-><init>(Lcom/google/android/gms/internal/fn;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fn$a;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PeopleAggregator"

    const-string v2, "Unable to start thread"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/fd;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gh()V

    goto :goto_0
.end method

.method private gj()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Ot:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->j(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    const-string v1, "agg start"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->NT:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->NT:Landroid/database/Cursor;

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/fn$c;

    iget-object v2, p0, Lcom/google/android/gms/internal/fn;->NS:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/fn$c;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v2, Lcom/google/android/gms/internal/fn$c;

    iget-object v3, p0, Lcom/google/android/gms/internal/fn;->Ou:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/fn$c;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/fn;->a(Lcom/google/android/gms/internal/fn$c;Lcom/google/android/gms/internal/fn$c;Landroid/database/Cursor;)Lcom/google/android/gms/internal/fk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    const-string v2, "agg finish"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    const-string v2, "PeopleAggregator"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/fh;->j(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->On:Lcom/google/android/gms/internal/fn$d;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2, v0}, Lcom/google/android/gms/internal/fn$d;->a(ILandroid/os/Bundle;Lcom/google/android/gms/people/model/AggregatedPersonBuffer;)V

    return-void

    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/gms/internal/fl;->Ok:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static k(Z)V
    .locals 0

    sput-boolean p0, Lcom/google/android/gms/internal/fn;->Ox:Z

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;Lcom/google/android/gms/internal/fi;Lcom/google/android/gms/internal/ew;Ljava/util/HashMap;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Lcom/google/android/gms/internal/fi;",
            "Lcom/google/android/gms/internal/ew;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v6, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Ljava/util/ArrayList;

    const/4 v4, 0x6

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v8, v4, v1

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    move-wide v9, v4

    move v4, v3

    move-wide v2, v9

    :goto_1
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    move-wide v9, v2

    move-wide v1, v9

    move v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    move-wide v9, v2

    move-wide v1, v9

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/fi;->put(Ljava/lang/String;I)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v5, v0}, Lcom/google/android/gms/internal/ew;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_3
    move v0, v1

    move-wide v9, v2

    move-wide v1, v9

    move v3, v4

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    move v4, v3

    move-wide v9, v1

    move-wide v2, v9

    move v1, v0

    goto :goto_1
.end method

.method protected abstract a(Lcom/google/android/gms/internal/fn$c;Lcom/google/android/gms/internal/fn$c;Landroid/database/Cursor;)Lcom/google/android/gms/internal/fk;
.end method

.method a(Landroid/database/Cursor;Ljava/lang/Exception;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    const-string v1, "contacts loaded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "PeopleAggregator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contacts loaded.  exception="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->to:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Ov:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fn;->NT:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/google/android/gms/internal/fn;->Ow:Ljava/lang/Exception;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gi()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    const-string v1, "contacts load failure"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;[Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    const-string v1, "people loaded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "PeopleAggregator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "People loaded.  status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    aget-object v0, p2, v4

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->to:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Os:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/fn;->Ot:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Ot:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->NS:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v0, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/google/android/gms/internal/fn;->Ou:Lcom/google/android/gms/common/data/DataHolder;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Oq:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gi()V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Or:Lcom/google/android/gms/internal/fh;

    const-string v1, "people load failure"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    aget-object v0, p2, v4

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Ot:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gf()V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/fn;->to:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Ov:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gh()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method protected b(Lcom/google/android/gms/internal/fn$c;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fn$c;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fn$c;->dJ(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fn$c;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fn$c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gaia_id"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/fn$c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected gd()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Ou:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public ge()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fn;->Oq:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/fn;->gf()V

    :cond_0
    return-void
.end method

.method protected abstract gg()Landroid/database/Cursor;
.end method

.method protected q(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/fn;->Oz:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
