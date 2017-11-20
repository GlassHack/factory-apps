.class public final Lcom/google/android/gms/common/people/data/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/google/android/gms/common/people/a/h;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/h;->a:Lcom/google/android/gms/common/people/a/k;

    .line 116
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/h;->d:Z

    if-eqz v1, :cond_0

    .line 117
    iget v0, p0, Lcom/google/android/gms/common/people/a/h;->e:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown system group type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "public"

    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/gms/common/people/data/AudienceMember;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    .line 124
    :goto_1
    return-object v0

    .line 117
    :pswitch_1
    const-string v0, "domain"

    goto :goto_0

    :pswitch_2
    const-string v0, "myCircles"

    goto :goto_0

    :pswitch_3
    const-string v0, "extendedCircles"

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/people/a/h;->b:Z

    if-eqz v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/h;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/people/data/AudienceMember;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_1
    iget-boolean v1, v0, Lcom/google/android/gms/common/people/a/k;->c:Z

    if-eqz v1, :cond_2

    .line 122
    iget-object v0, v0, Lcom/google/android/gms/common/people/a/k;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/people/data/AudienceMember;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_2
    iget-boolean v1, v0, Lcom/google/android/gms/common/people/a/k;->a:Z

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, v0, Lcom/google/android/gms/common/people/a/k;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/common/people/a/k;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized sharing target ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Lcom/google/android/gms/common/people/a/c;)Ljava/util/List;
    .locals 5

    .prologue
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/common/people/a/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/g;

    iget-object v4, v0, Lcom/google/android/gms/common/people/a/g;->a:Lcom/google/android/gms/common/people/a/h;

    iget-object v0, v0, Lcom/google/android/gms/common/people/a/g;->b:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/google/android/gms/common/people/data/c;->a(Lcom/google/android/gms/common/people/a/h;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 54
    :cond_0
    return-object v2
.end method

.method public static a([B)Ljava/util/List;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-static {p0}, Lcom/google/android/gms/common/people/a/c;->a([B)Lcom/google/android/gms/common/people/a/c;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Lcom/google/android/gms/common/people/data/c;->a(Lcom/google/android/gms/common/people/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    invoke-virtual {v6, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/common/people/a/c;->c()I

    move-result v7

    move v3, v2

    :goto_1
    if-ge v3, v7, :cond_3

    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/people/a/c;->a(I)Lcom/google/android/gms/common/people/a/d;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/gms/common/people/a/d;->a:Z

    if-eqz v1, :cond_2

    iget-object v8, v0, Lcom/google/android/gms/common/people/a/d;->b:Lcom/google/android/gms/common/people/a/f;

    iget-object v0, v8, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move v1, v2

    :goto_2
    if-ge v1, v9, :cond_2

    iget-object v0, v8, Lcom/google/android/gms/common/people/a/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/a/h;

    const/4 v10, 0x0

    invoke-static {v0, v10}, Lcom/google/android/gms/common/people/data/c;->a(Lcom/google/android/gms/common/people/a/h;Ljava/lang/String;)Lcom/google/android/gms/common/people/data/AudienceMember;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No rendered information for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " available."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method public static a(Lcom/google/android/gms/common/people/a/f;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 288
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/people/data/AudienceMember;

    .line 289
    new-instance v2, Lcom/google/android/gms/common/people/a/h;

    invoke-direct {v2}, Lcom/google/android/gms/common/people/a/h;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->b()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown member type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->c()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown system group type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/people/a/h;->a(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/h;

    .line 290
    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/people/a/f;->a(Lcom/google/android/gms/common/people/a/h;)Lcom/google/android/gms/common/people/a/f;

    goto :goto_0

    .line 289
    :pswitch_2
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/people/a/h;->a(I)Lcom/google/android/gms/common/people/a/h;

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_2

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_2

    :pswitch_6
    invoke-virtual {v0}, Lcom/google/android/gms/common/people/data/AudienceMember;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/common/people/a/k;

    invoke-direct {v3}, Lcom/google/android/gms/common/people/a/k;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/people/internal/t;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/people/internal/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/people/a/k;->a(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/k;

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/people/a/h;->a(Lcom/google/android/gms/common/people/a/k;)Lcom/google/android/gms/common/people/a/h;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/people/internal/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/people/a/k;->b(Ljava/lang/String;)Lcom/google/android/gms/common/people/a/k;

    goto :goto_3

    .line 292
    :cond_1
    return-void

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
