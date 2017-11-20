.class Lcom/google/android/gms/internal/fp;
.super Lcom/google/android/gms/internal/fn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fp$a;
    }
.end annotation


# static fields
.field public static final OE:[Ljava/lang/String;


# instance fields
.field private final LM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/fp;->OE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/fn$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/fn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fn$d;ZILandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/fp;->LM:Ljava/lang/String;

    return-void
.end method

.method private gm()Landroid/database/Cursor;
    .locals 8

    const/4 v4, 0x0

    const/16 v7, 0x64

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fp;->LM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/fp;->OE:[Ljava/lang/String;

    const-string v3, "(data1 IS NOT NULL AND data1!=\'\')"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fp;->LM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/fp;->OE:[Ljava/lang/String;

    const-string v3, "(data1 IS NOT NULL AND data1!=\'\')"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/fp$a;

    invoke-direct {v1, v6, v7}, Lcom/google/android/gms/internal/fp$a;-><init>(Landroid/database/Cursor;I)V

    new-instance v2, Lcom/google/android/gms/internal/fp$a;

    invoke-direct {v2, v0, v7}, Lcom/google/android/gms/internal/fp$a;-><init>(Landroid/database/Cursor;I)V

    new-instance v0, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/fn$c;Lcom/google/android/gms/internal/fn$c;Landroid/database/Cursor;)Lcom/google/android/gms/internal/fk;
    .locals 12

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/internal/ex;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ex;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ex;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ex;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fn$c;->getCount()I

    move-result v0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v4, "people-map start"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/fp;->a(Lcom/google/android/gms/internal/fn$c;Ljava/util/HashMap;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v4, "people-map finish"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/fi;

    invoke-direct {v3}, Lcom/google/android/gms/internal/fi;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ew;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ew;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p2, v8}, Lcom/google/android/gms/internal/fp;->b(Lcom/google/android/gms/internal/fn$c;Ljava/util/HashMap;)V

    iget-object v7, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v9, "contact-map start"

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    invoke-virtual {p0, p3, v3, v4, v8}, Lcom/google/android/gms/internal/fp;->a(Landroid/database/Cursor;Lcom/google/android/gms/internal/fi;Lcom/google/android/gms/internal/ew;Ljava/util/HashMap;)I

    move-result v7

    iget-object v9, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v10, "contact-map finish"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/fd;->fR()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "PeopleAggregator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#people="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", #contacts="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/android/gms/internal/fd;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v7, "merge start"

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/util/a;->de()Ljava/util/ArrayList;

    move-result-object v7

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/fn$c;->dJ(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/fn$c;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fn$c;->getPosition()I

    move-result v0

    const-string v9, "gaia_id"

    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/fn$c;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ex;->dF(I)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_1

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/fi;->aJ(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ex;->fI()V

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v3, v9}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/internal/fi;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {p3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v1, "merge finish"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/fk;

    iget-object v1, p1, Lcom/google/android/gms/internal/fn$c;->OB:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v3, p0, Lcom/google/android/gms/internal/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ex;->size()I

    move-result v4

    iget v9, p0, Lcom/google/android/gms/internal/fp;->LP:I

    iget-object v10, p0, Lcom/google/android/gms/internal/fp;->Oo:Landroid/os/Bundle;

    iget-object v11, p0, Lcom/google/android/gms/internal/fp;->Op:Landroid/os/Bundle;

    move-object v2, p3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/fk;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/database/Cursor;Landroid/content/Context;ILcom/google/android/gms/internal/ex;Lcom/google/android/gms/internal/ex;Ljava/util/ArrayList;Ljava/util/HashMap;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v0

    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ew;->dE(I)I

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ex;->fI()V

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ex;->dF(I)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p3}, Lcom/google/android/gms/internal/fl;->a(Landroid/database/Cursor;)Z

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_5

    invoke-virtual {v4, v3, v0}, Lcom/google/android/gms/internal/ew;->c(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ex;->fI()V

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ex;->dF(I)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected gg()Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    sget-boolean v1, Lcom/google/android/gms/internal/fp;->Ox:Z

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/fl$a;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->LM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "visible_contacts_only"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/fp;->LL:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/fg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/fg;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/fl;->gb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/fg;->aG(Ljava/lang/String;)V

    const-string v0, "(data1 IS NOT NULL AND data1!=\'\')"

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/fg;->aG(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/fl;->Ok:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fg;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name COLLATE LOCALIZED,contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    new-instance v3, Lcom/google/android/gms/internal/fg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/fg;-><init>()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fp;->LL:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fp;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/fg;ZLandroid/content/Context;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/fg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v1, "lookup start"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/fp;->gm()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/fp;->Or:Lcom/google/android/gms/internal/fh;

    const-string v5, "lookup finish"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/fh;->aI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v0, "contact_id IN ("

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/fg;->aG(Ljava/lang/String;)V

    const-string v0, ""

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/fg;->aF(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/fg;->aF(Ljava/lang/String;)V

    const-string v0, ","

    goto :goto_2

    :cond_4
    const-string v0, ")"

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/fg;->aF(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/fp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gms/internal/fl;->Ok:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/fg;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "display_name COLLATE LOCALIZED,contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method
