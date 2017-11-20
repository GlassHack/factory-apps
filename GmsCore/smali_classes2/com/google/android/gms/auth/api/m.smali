.class final Lcom/google/android/gms/auth/api/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field c:I

.field final synthetic d:Lcom/google/android/gms/auth/api/k;

.field private final e:Z

.field private f:Ljava/lang/Class;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const v4, 0x7fffffff

    const/high16 v3, -0x80000000

    const/4 v0, 0x0

    .line 575
    iput-object p1, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p2, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    .line 577
    iput v0, p0, Lcom/google/android/gms/auth/api/m;->c:I

    .line 578
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    .line 579
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    .line 580
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->i:Ljava/util/List;

    .line 582
    const-string v1, "type"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_0

    .line 584
    const-string v2, "string"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->f:Ljava/lang/Class;

    .line 586
    :cond_0
    :goto_0
    const-string v1, "required"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/auth/api/m;->b:Z

    .line 587
    const-string v1, "repeated"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/auth/api/m;->e:Z

    .line 588
    const-string v1, "location"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_1

    .line 590
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 591
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/auth/api/m;->c:I

    .line 596
    :cond_1
    :goto_1
    const-string v1, "minimum"

    invoke-virtual {p3, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    .line 597
    const-string v1, "maximum"

    invoke-virtual {p3, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    .line 598
    const-string v1, "enum"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 599
    if-eqz v1, :cond_6

    .line 600
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 601
    iget-object v2, p0, Lcom/google/android/gms/auth/api/m;->i:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 584
    :cond_2
    const-string v2, "integer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->f:Ljava/lang/Class;

    goto :goto_0

    :cond_3
    const-string v2, "boolean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->f:Ljava/lang/Class;

    goto :goto_0

    :cond_4
    const-string v2, "number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Ljava/lang/Double;

    iput-object v1, p0, Lcom/google/android/gms/auth/api/m;->f:Ljava/lang/Class;

    goto :goto_0

    .line 593
    :cond_5
    iput v0, p0, Lcom/google/android/gms/auth/api/m;->c:I

    goto :goto_1

    .line 604
    :cond_6
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 622
    const-string v0, ""

    .line 623
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 625
    goto :goto_0

    .line 626
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 627
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljava/util/List;)V
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 637
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/m;->e:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 638
    new-instance v0, Lcom/google/android/gms/auth/api/q;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v4, "Illegal number of arguments. Only one argument with key %s is supported; found %d."

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 644
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 647
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 652
    :goto_0
    if-nez v1, :cond_3

    .line 653
    new-instance v1, Lcom/google/android/gms/auth/api/q;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v5, "Illegal argument \'%s\' with value \'%s\'. Must be one of the following: %s."

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object v0, v6, v2

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/m;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v1

    .line 660
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->f:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    if-ne v1, v5, :cond_5

    .line 663
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 671
    new-instance v1, Lcom/google/android/gms/auth/api/q;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v5, "Illegal argument \'%s\' with value \'%d\'. Must be greater or equal than \'%d\'."

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v1

    .line 665
    :catch_0
    move-exception v1

    new-instance v1, Lcom/google/android/gms/auth/api/q;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v5, "Illegal argument \'%s\' with value \'%s\'. An integer is expected."

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 677
    new-instance v1, Lcom/google/android/gms/auth/api/q;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v5, "Illegal argument \'%s\' with value \'%d\'. Must be lower or equal than \'%d\'."

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->f:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    if-ne v1, v5, :cond_7

    .line 684
    :try_start_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 685
    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 692
    iget-object v5, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    cmpg-double v5, v0, v6

    if-gez v5, :cond_6

    .line 693
    new-instance v4, Lcom/google/android/gms/auth/api/q;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v6, "Illegal argument \'%s\' with value \'%f\'. Must be greater or equal than \'%d\'."

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/m;->g:Ljava/lang/Integer;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v4

    .line 687
    :catch_1
    move-exception v1

    new-instance v1, Lcom/google/android/gms/auth/api/q;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v5, "Illegal argument \'%s\' with value \'%s\'. A number is expected."

    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v7, v6, v3

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    cmpl-double v5, v0, v6

    if-lez v5, :cond_1

    .line 699
    new-instance v4, Lcom/google/android/gms/auth/api/q;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    const-string v6, "Illegal argument \'%s\' with value \'%f\'. Must be lower or equal than \'%d\'."

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v7, v2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/m;->h:Ljava/lang/Integer;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v4

    .line 704
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/auth/api/m;->f:Ljava/lang/Class;

    const-class v5, Ljava/lang/Boolean;

    if-ne v1, v5, :cond_1

    .line 705
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 706
    new-instance v1, Lcom/google/android/gms/auth/api/q;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/m;->d:Lcom/google/android/gms/auth/api/k;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parameter \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/auth/api/m;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' is not in the expected format. A boolean was expected: either \'true\' or \'false\'."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/api/q;-><init>(Lcom/google/android/gms/auth/api/k;Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_8
    return-void

    :cond_9
    move v1, v3

    goto/16 :goto_0
.end method
