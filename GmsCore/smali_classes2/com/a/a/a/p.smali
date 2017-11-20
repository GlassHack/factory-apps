.class public final Lcom/a/a/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/a/a/p;->a:Ljava/util/Map;

    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/d;->f()Lcom/a/a/b/d;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:contributor"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:language"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:publisher"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:relation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:subject"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:type"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/d;->f()Lcom/a/a/b/d;

    invoke-virtual {v0}, Lcom/a/a/b/d;->h()Lcom/a/a/b/d;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:creator"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:date"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/b/d;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/b/d;->f()Lcom/a/a/b/d;

    invoke-virtual {v0}, Lcom/a/a/b/d;->h()Lcom/a/a/b/d;

    invoke-virtual {v0}, Lcom/a/a/b/d;->j()Lcom/a/a/b/d;

    invoke-virtual {v0}, Lcom/a/a/b/d;->l()Lcom/a/a/b/d;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:description"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:rights"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/a/a/a/p;->a:Ljava/util/Map;

    const-string v2, "dc:title"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method static a(Lcom/a/a/a/k;Lcom/a/a/b/c;)Lcom/a/a/c;
    .locals 13

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/a/a/a/k;->a()Lcom/a/a/a/m;

    move-result-object v7

    .line 64
    invoke-virtual {p0}, Lcom/a/a/a/k;->a()Lcom/a/a/a/m;

    move-result-object v1

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    invoke-virtual {p0}, Lcom/a/a/a/k;->a()Lcom/a/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/m;

    const-string v2, "http://purl.org/dc/elements/1.1/"

    invoke-virtual {v1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v3, v2

    :goto_1
    invoke-virtual {v1}, Lcom/a/a/a/m;->c()I

    move-result v2

    if-gt v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v5

    sget-object v2, Lcom/a/a/a/p;->a:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/b/d;

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v4

    iget v4, v4, Lcom/a/a/b/b;->a:I

    and-int/lit16 v4, v4, 0x300

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    new-instance v4, Lcom/a/a/a/m;

    invoke-virtual {v5}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Lcom/a/a/b/d;)V

    const-string v6, "[]"

    invoke-virtual {v5, v6}, Lcom/a/a/a/m;->c(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    invoke-virtual {v1, v3, v4}, Lcom/a/a/a/m;->a(ILcom/a/a/a/m;)V

    invoke-virtual {v2}, Lcom/a/a/b/d;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b/d;->b()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/a/a/a/m;

    const-string v4, "xml:lang"

    const-string v6, "x-default"

    const/4 v9, 0x0

    invoke-direct {v2, v4, v6, v9}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    invoke-virtual {v5, v2}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    :cond_1
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v4

    const/16 v6, 0x1e00

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9}, Lcom/a/a/b/d;->a(IZ)V

    invoke-virtual {v5}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/a/a/b/d;->a(Lcom/a/a/b/d;)V

    invoke-virtual {v2}, Lcom/a/a/b/d;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v5}, Lcom/a/a/a/p;->a(Lcom/a/a/a/m;)V

    goto :goto_3

    :cond_4
    const-string v2, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "exif:GPSTimeStamp"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v3

    if-eqz v3, :cond_5

    :try_start_0
    invoke-virtual {v3}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/f;->e(Ljava/lang/String;)Lcom/a/a/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/a/a/a;->a()I

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v4}, Lcom/a/a/a;->b()I

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v4}, Lcom/a/a/a;->c()I
    :try_end_0
    .catch Lcom/a/a/b; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    :goto_4
    const-string v2, "exif:UserComment"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/a/a/a/p;->a(Lcom/a/a/a/m;)V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v2, "exif:DateTimeOriginal"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, "exif:DateTimeDigitized"

    const/4 v5, 0x0

    invoke-static {v1, v2, v5}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v2

    :cond_7
    invoke-virtual {v2}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/f;->e(Ljava/lang/String;)Lcom/a/a/a;

    move-result-object v2

    invoke-interface {v4}, Lcom/a/a/a;->i()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2}, Lcom/a/a/a;->a()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    invoke-interface {v2}, Lcom/a/a/a;->b()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x5

    invoke-interface {v2}, Lcom/a/a/a;->c()I

    move-result v2

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    new-instance v2, Lcom/a/a/a/j;

    invoke-direct {v2, v4}, Lcom/a/a/a/j;-><init>(Ljava/util/Calendar;)V

    invoke-static {v2}, Lcom/a/a/a/d;->a(Lcom/a/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/a/a/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_4

    :cond_8
    const-string v2, "http://ns.adobe.com/xmp/1.0/DynamicMedia/"

    invoke-virtual {v1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "xmpDM:copyright"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_2
    move-object v0, p0

    check-cast v0, Lcom/a/a/a/k;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/a/a/a/k;->a()Lcom/a/a/a/m;

    move-result-object v1

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v1

    invoke-virtual {v9}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\n\n"

    const-string v2, "dc:rights"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lcom/a/a/a/m;->f()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "rights"

    const-string v4, ""

    const-string v5, "x-default"

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    invoke-virtual {v9}, Lcom/a/a/a/m;->a()Lcom/a/a/a/m;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/a/a/a/m;->c(Lcom/a/a/a/m;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :cond_b
    const-string v1, "x-default"

    invoke-static {v12, v1}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v6

    const-string v2, "http://purl.org/dc/elements/1.1/"

    const-string v3, "rights"

    const-string v4, ""

    const-string v5, "x-default"

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "x-default"

    invoke-static {v12, v1}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;)I

    move-result v1

    :cond_c
    invoke-virtual {v12, v1}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_d

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/a/a/b; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :cond_e
    const-string v2, "http://ns.adobe.com/xap/1.0/rights/"

    invoke-virtual {v1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "xmpRights:UsageTerms"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/a/a/a/p;->a(Lcom/a/a/a/m;)V

    goto/16 :goto_0

    .line 65
    :cond_f
    invoke-virtual {v7}, Lcom/a/a/a/m;->n()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/a/a/a/m;->b(Z)V

    invoke-virtual {p1}, Lcom/a/a/b/c;->b()Z

    move-result v4

    invoke-virtual {v7}, Lcom/a/a/a/m;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/m;

    invoke-virtual {v1}, Lcom/a/a/a/m;->n()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v6

    :cond_11
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/a/a/m;

    invoke-virtual {v2}, Lcom/a/a/a/m;->o()Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/a/a/a/m;->c(Z)V

    invoke-static {}, Lcom/a/a/d;->a()Lcom/a/a/e;

    move-result-object v3

    invoke-virtual {v2}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/a/a/e;->c(Ljava/lang/String;)Lcom/a/a/c/a;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-interface {v8}, Lcom/a/a/c/a;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v3, v9, v10}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/a/a/a/m;->a(Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lcom/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Lcom/a/a/c/a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Lcom/a/a/a/o;->b(Lcom/a/a/a/m;Ljava/lang/String;Z)Lcom/a/a/a/m;

    move-result-object v9

    if-nez v9, :cond_14

    invoke-interface {v8}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/a/b/a;->a()Z

    move-result v9

    if-eqz v9, :cond_13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lcom/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Lcom/a/a/c/a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/a/a/a/m;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    :cond_12
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_13
    new-instance v9, Lcom/a/a/a/m;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lcom/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Lcom/a/a/c/a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/b/a;->d()Lcom/a/a/b/d;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Lcom/a/a/b/d;)V

    invoke-virtual {v3, v9}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    invoke-static {v6, v2, v9}, Lcom/a/a/a/p;->a(Ljava/util/Iterator;Lcom/a/a/a/m;Lcom/a/a/a/m;)V

    goto/16 :goto_7

    :cond_14
    invoke-interface {v8}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/a/b/a;->a()Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v4, :cond_15

    const/4 v3, 0x1

    invoke-static {v2, v9, v3}, Lcom/a/a/a/p;->a(Lcom/a/a/a/m;Lcom/a/a/a/m;Z)V

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_7

    :cond_16
    const/4 v3, 0x0

    invoke-interface {v8}, Lcom/a/a/c/a;->d()Lcom/a/a/b/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/a/b/a;->c()Z

    move-result v8

    if-eqz v8, :cond_18

    const-string v8, "x-default"

    invoke-static {v9, v8}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Ljava/lang/String;)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_17

    invoke-virtual {v9, v8}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v3

    :cond_17
    :goto_9
    if-nez v3, :cond_19

    invoke-static {v6, v2, v9}, Lcom/a/a/a/p;->a(Ljava/util/Iterator;Lcom/a/a/a/m;Lcom/a/a/a/m;)V

    goto/16 :goto_7

    :cond_18
    invoke-virtual {v9}, Lcom/a/a/a/m;->f()Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Lcom/a/a/a/m;->a(I)Lcom/a/a/a/m;

    move-result-object v3

    goto :goto_9

    :cond_19
    if-eqz v4, :cond_12

    const/4 v8, 0x1

    invoke-static {v2, v3, v8}, Lcom/a/a/a/p;->a(Lcom/a/a/a/m;Lcom/a/a/a/m;Z)V

    goto :goto_8

    :cond_1a
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/a/a/a/m;->b(Z)V

    goto/16 :goto_6

    .line 67
    :cond_1b
    invoke-virtual {v7}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v7}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-lt v1, v2, :cond_1d

    invoke-virtual {v7}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uuid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    invoke-static {v1}, Lcom/a/a/a/i;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "http://ns.adobe.com/xap/1.0/mm/"

    const-string v3, "InstanceID"

    invoke-static {v2, v3}, Lcom/a/a/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/a/b;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v7, v2, v3, v4}, Lcom/a/a/a/o;->a(Lcom/a/a/a/m;Lcom/a/a/a/a/b;ZLcom/a/a/b/d;)Lcom/a/a/a/m;

    move-result-object v2

    if-eqz v2, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/a/a/a/m;->a(Lcom/a/a/b/d;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uuid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/a/a/m;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/a/a/m;->b()V

    invoke-virtual {v2}, Lcom/a/a/a/m;->e()V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/a/a/a/m;->c(Ljava/lang/String;)V

    .line 69
    :cond_1d
    invoke-static {v7}, Lcom/a/a/a/p;->b(Lcom/a/a/a/m;)V

    .line 71
    return-object p0

    .line 67
    :cond_1e
    new-instance v1, Lcom/a/a/b;

    const-string v2, "Failure creating xmpMM:InstanceID"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method private static a(Lcom/a/a/a/m;)V
    .locals 6

    .prologue
    .line 244
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    :cond_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->h()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->j()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->l()Lcom/a/a/b/d;

    .line 254
    invoke-virtual {p0}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 257
    invoke-virtual {v0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b/d;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {v0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/b/d;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v2

    .line 265
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 268
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 273
    :cond_5
    new-instance v2, Lcom/a/a/a/m;

    const-string v3, "xml:lang"

    const-string v4, "x-repair"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 274
    invoke-virtual {v0, v2}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    goto :goto_0
.end method

.method private static a(Lcom/a/a/a/m;Lcom/a/a/a/m;Z)V
    .locals 5

    .prologue
    const/16 v2, 0xcb

    const/4 v4, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/m;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/a/m;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/a/a/m;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 527
    :cond_0
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Mismatch between alias and base nodes"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 530
    :cond_1
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/a/a/a/m;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/a/a/m;->d()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 537
    :cond_2
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Mismatch between alias and base nodes"

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 541
    :cond_3
    invoke-virtual {p0}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v2

    .line 542
    invoke-virtual {p1}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v3

    .line 543
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 545
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 546
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/m;

    .line 547
    invoke-static {v0, v1, v4}, Lcom/a/a/a/p;->a(Lcom/a/a/a/m;Lcom/a/a/a/m;Z)V

    goto :goto_0

    .line 551
    :cond_4
    invoke-virtual {p0}, Lcom/a/a/a/m;->i()Ljava/util/Iterator;

    move-result-object v2

    .line 552
    invoke-virtual {p1}, Lcom/a/a/a/m;->i()Ljava/util/Iterator;

    move-result-object v3

    .line 553
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 556
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/m;

    .line 557
    invoke-static {v0, v1, v4}, Lcom/a/a/a/p;->a(Lcom/a/a/a/m;Lcom/a/a/a/m;Z)V

    goto :goto_1

    .line 559
    :cond_5
    return-void
.end method

.method private static a(Ljava/util/Iterator;Lcom/a/a/a/m;Lcom/a/a/a/m;)V
    .locals 4

    .prologue
    .line 420
    invoke-virtual {p2}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p1}, Lcom/a/a/a/m;->l()Lcom/a/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Lcom/a/a/b;

    const-string v1, "Alias to x-default already has a language qualifier"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v2}, Lcom/a/a/b;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 428
    :cond_0
    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "xml:lang"

    const-string v2, "x-default"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/a/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/b/d;)V

    .line 429
    invoke-virtual {p1, v0}, Lcom/a/a/a/m;->d(Lcom/a/a/a/m;)V

    .line 432
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 433
    const-string v0, "[]"

    invoke-virtual {p1, v0}, Lcom/a/a/a/m;->c(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2, p1}, Lcom/a/a/a/m;->a(Lcom/a/a/a/m;)V

    .line 435
    return-void
.end method

.method private static b(Lcom/a/a/a/m;)V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/a/a/a/m;->g()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/m;

    .line 503
    invoke-virtual {v0}, Lcom/a/a/a/m;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 508
    :cond_1
    return-void
.end method
