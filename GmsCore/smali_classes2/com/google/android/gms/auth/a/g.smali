.class public Lcom/google/android/gms/auth/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/a/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/auth/login/an;)Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->f:Z

    if-eqz v0, :cond_5

    .line 25
    iget-object v7, p0, Lcom/google/android/gms/auth/login/an;->g:Lcom/google/android/gms/auth/login/al;

    .line 26
    iget-boolean v1, v7, Lcom/google/android/gms/auth/login/al;->e:Z

    .line 27
    iget-object v2, v7, Lcom/google/android/gms/auth/login/al;->a:Ljava/lang/String;

    .line 28
    iget-boolean v3, v7, Lcom/google/android/gms/auth/login/al;->f:Z

    .line 29
    iget-boolean v4, v7, Lcom/google/android/gms/auth/login/al;->i:Z

    .line 30
    iget-boolean v5, v7, Lcom/google/android/gms/auth/login/al;->g:Z

    .line 31
    iget-boolean v6, v7, Lcom/google/android/gms/auth/login/al;->h:Z

    .line 32
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;-><init>(ZLjava/lang/String;ZZZZ)V

    .line 39
    iget-object v1, v7, Lcom/google/android/gms/auth/login/al;->b:Ljava/lang/String;

    .line 40
    iget-object v2, v7, Lcom/google/android/gms/auth/login/al;->d:Ljava/lang/String;

    .line 41
    iget-boolean v3, v7, Lcom/google/android/gms/auth/login/al;->c:Z

    .line 42
    new-instance v6, Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/google/android/gms/auth/firstparty/shared/FACLData;-><init>(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    if-lez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/ao;

    .line 49
    iget-object v0, v0, Lcom/google/android/gms/auth/login/ao;->a:Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/auth/login/an;->a:Ljava/lang/String;

    .line 54
    iget-object v3, p0, Lcom/google/android/gms/auth/login/an;->b:Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lcom/google/android/gms/auth/login/an;->c:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->h:Ljava/lang/String;

    .line 58
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->d:Z

    if-eqz v0, :cond_4

    .line 59
    iget-object v5, p0, Lcom/google/android/gms/auth/login/an;->e:Ljava/lang/String;

    .line 61
    :goto_2
    const-string v0, "GLSUser"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/google/android/gms/auth/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " Converting ScopeDescription to ScopeDetail for service %s. With pacl? %s. With facl? %s"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    const/4 v0, 0x3

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v1, v11, v10

    if-nez v5, :cond_2

    move v0, v9

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v11, v9

    if-nez v6, :cond_3

    :goto_4
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v8, "GLSUser"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/FACLData;Ljava/util/List;)V

    return-object v0

    :cond_2
    move v0, v10

    .line 65
    goto :goto_3

    :cond_3
    move v9, v10

    goto :goto_4

    :cond_4
    move-object v5, v8

    goto :goto_2

    :cond_5
    move-object v6, v8

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;)Lcom/google/android/gms/common/acl/ScopeData;
    .locals 15

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    .line 111
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    new-instance v4, Lcom/google/android/gms/auth/login/ao;

    invoke-direct {v4}, Lcom/google/android/gms/auth/login/ao;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/auth/login/ao;->a(Ljava/lang/String;)Lcom/google/android/gms/auth/login/ao;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->h:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    .line 116
    :goto_1
    if-eqz v5, :cond_5

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->h:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->a()Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->b()Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->f()Z

    move-result v4

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->d()Z

    move-result v3

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->e()Z

    move-result v2

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->a()Z

    move-result v1

    .line 124
    invoke-virtual {v0}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->c()Z

    move-result v0

    .line 126
    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->h:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    invoke-virtual {v7}, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->c()Ljava/lang/String;

    move-result-object v7

    .line 127
    iget-object v8, p0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->h:Lcom/google/android/gms/auth/firstparty/shared/FACLData;

    invoke-virtual {v8}, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->b()Z

    move-result v8

    move v13, v0

    move v12, v1

    move v11, v2

    move v10, v3

    move v9, v4

    .line 129
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->d()Ljava/lang/String;

    move-result-object v3

    .line 130
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->f()Ljava/lang/String;

    move-result-object v3

    .line 133
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/acl/ScopeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZZLjava/util/List;)V

    return-object v0

    :cond_3
    move v5, v1

    .line 115
    goto :goto_1

    :cond_4
    move v0, v1

    move v3, v1

    move v4, v1

    move-object v6, v2

    move v2, v1

    goto :goto_2

    :cond_5
    move v13, v1

    move v12, v1

    move v11, v1

    move v10, v1

    move v9, v1

    move v8, v1

    move-object v7, v2

    move-object v6, v2

    goto :goto_3
.end method
