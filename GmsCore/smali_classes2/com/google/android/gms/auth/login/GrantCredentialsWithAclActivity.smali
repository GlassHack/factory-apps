.class public Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;
.super Landroid/support/v4/app/j;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gms/auth/login/b;
.implements Lcom/google/android/gms/auth/login/f;
.implements Lcom/google/android/gms/auth/login/g;


# static fields
.field private static final n:Ljava/lang/String;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/lang/String;

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/util/ArrayList;

.field private F:I

.field private G:Landroid/widget/Button;

.field private H:Landroid/widget/Button;

.field private I:Lcom/google/android/gms/common/ui/ScrollViewWithEvents;

.field private J:Lcom/google/android/gms/auth/d/e;

.field private K:J

.field private L:J

.field private M:J

.field private N:Z

.field private O:I

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->n:Ljava/lang/String;

    .line 100
    const-string v0, "<placeholder\\s*id=[\'\"]app_name[\'\"]\\s*/?>(.*</placeholder>)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->o:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "<br\\s*/?>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->p:Ljava/util/regex/Pattern;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->q:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "facl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->r:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pacl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->s:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "consent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->t:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hasTitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->u:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/j;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->M:J

    return-void
.end method

.method private a(Lcom/google/android/gms/auth/firstparty/shared/k;Lcom/google/android/gms/auth/firstparty/dataservice/az;)Landroid/content/Intent;
    .locals 11

    .prologue
    .line 182
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 183
    invoke-static {p1}, Lcom/google/android/gms/auth/a/h;->a(Lcom/google/android/gms/auth/firstparty/shared/k;)Lcom/google/android/gms/auth/a/h;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/auth/a/h;->b(Landroid/content/Intent;)V

    .line 184
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->t:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/common/acl/ScopeData;

    .line 195
    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    sget-object v10, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->r:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->p()Z

    move-result v1

    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->q()Z

    move-result v3

    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->m()Z

    move-result v4

    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->o()Z

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->k()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;-><init>(ZLjava/lang/String;ZZZZ)V

    invoke-virtual {v8, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/common/acl/ScopeData;->e()Ljava/lang/String;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->s:Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 214
    :cond_2
    return-object v8
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;ZI)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 128
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    const-string v0, "callingPkg"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v0, "callingUid"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v0, "service"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v0, "acctName"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    if-eqz p4, :cond_0

    .line 136
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/auth/a/g;->a(Lcom/google/android/gms/auth/firstparty/shared/ScopeDetail;)Lcom/google/android/gms/common/acl/ScopeData;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    const-string v0, "scopeData"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 141
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    return-object v1
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/auth/login/ab;
    .locals 5

    .prologue
    .line 147
    invoke-static {p0}, Lcom/google/android/gms/auth/a/h;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/firstparty/shared/k;

    move-result-object v2

    .line 148
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .line 149
    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    sget-object v1, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->t:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/az;->a:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    .line 155
    :goto_0
    new-instance v4, Lcom/google/android/gms/auth/login/ab;

    invoke-direct {v4, v2, v0, v3, v1}, Lcom/google/android/gms/auth/login/ab;-><init>(Lcom/google/android/gms/auth/firstparty/shared/k;Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/dataservice/az;)V

    return-object v4

    .line 151
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/auth/firstparty/dataservice/az;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/az;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scopeFragment"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 218
    const-string v0, "callingPkg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    .line 219
    const-string v0, "callingUid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->B:I

    .line 220
    const-string v0, "service"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    .line 221
    const-string v0, "acctName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->D:Ljava/lang/String;

    .line 222
    const-string v0, "scopeData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    :cond_0
    const-string v0, "lastScopeIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->F:I

    .line 228
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->N:Z

    .line 229
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->v:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->O:I

    .line 230
    return-void
.end method

.method private a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 574
    sget-object v5, Lcom/google/android/gms/common/analytics/d;->c:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 580
    return-void
.end method

.method private a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 592
    sget-object v5, Lcom/google/android/gms/common/analytics/d;->c:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 593
    return-void
.end method

.method private a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V
    .locals 9

    .prologue
    .line 601
    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->D:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p5

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/common/server/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 611
    return-void
.end method

.method private b(I)Lcom/google/android/gms/auth/login/e;
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    invoke-static {p1}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/e;

    return-object v0
.end method

.method private d()V
    .locals 11

    .prologue
    .line 390
    iget-object v6, p0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    .line 391
    invoke-virtual {v6}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v7

    .line 392
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 393
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_3

    .line 394
    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/acl/ScopeData;

    .line 395
    invoke-static {v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(I)Ljava/lang/String;

    move-result-object v9

    .line 396
    invoke-virtual {v6, v9}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 397
    if-nez v1, :cond_0

    .line 398
    const v10, 0x7f0d0053

    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->D:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->O:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/auth/login/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/acl/ScopeData;I)Lcom/google/android/gms/auth/login/e;

    move-result-object v1

    invoke-virtual {v7, v10, v1, v9}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    .line 411
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/common/acl/ScopeData;->d()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/common/acl/ScopeData;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->z:Z

    .line 393
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {v7}, Landroid/support/v4/app/z;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 416
    invoke-virtual {v7}, Landroid/support/v4/app/z;->b()I

    .line 420
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->N:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->O:I

    if-nez v0, :cond_6

    .line 421
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->e()V

    .line 427
    :cond_5
    :goto_1
    return-void

    .line 422
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->z:Z

    if-nez v0, :cond_5

    .line 425
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->e()V

    goto :goto_1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 430
    const v0, 0x7f0d00ac

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020181

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100024

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    const v0, 0x7f0d0051

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f100141

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 436
    return-void
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/acl/ScopeData;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/acl/ScopeData;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->j()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->l()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/acl/ScopeData;->n()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/acl/ScopeData;->a(Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/acl/ScopeData;->b(Z)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->b(I)Lcom/google/android/gms/auth/login/e;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/e;->R()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/e;->S()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    sget-object v0, Lcom/google/android/gms/common/analytics/c;->m:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    .line 459
    :cond_2
    sget-object v0, Lcom/google/android/gms/auth/firstparty/shared/k;->o:Lcom/google/android/gms/auth/firstparty/shared/k;

    sget-object v2, Lcom/google/android/gms/auth/firstparty/dataservice/az;->c:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/auth/firstparty/shared/k;Lcom/google/android/gms/auth/firstparty/dataservice/az;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->setResult(ILandroid/content/Intent;)V

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->L:J

    .line 462
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    iget-wide v2, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->L:J

    iget-wide v4, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->K:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/e;->e:J

    .line 463
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/e;->a()V

    .line 466
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->G:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 469
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->finish()V

    .line 470
    return-void

    .line 458
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    iget-wide v2, v0, Lcom/google/android/gms/auth/d/e;->f:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    iput-wide p1, v0, Lcom/google/android/gms/auth/d/e;->f:J

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/d/e;->g:Z

    .line 357
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    iput-boolean p1, v0, Lcom/google/android/gms/auth/d/e;->h:Z

    .line 361
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    iput-boolean p2, v0, Lcom/google/android/gms/auth/d/e;->i:Z

    .line 362
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->z:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/e;->d:I

    .line 497
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->f()V

    .line 498
    invoke-super {p0}, Landroid/support/v4/app/j;->onBackPressed()V

    .line 499
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 444
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 454
    :goto_0
    return-void

    .line 446
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/auth/d/e;->d:I

    .line 447
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->f()V

    goto :goto_0

    .line 450
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    iput v9, v0, Lcom/google/android/gms/auth/d/e;->d:I

    .line 451
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->I:Lcom/google/android/gms/common/ui/ScrollViewWithEvents;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    move v1, v4

    move v3, v4

    :goto_1
    if-ge v5, v6, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/acl/ScopeData;

    invoke-direct {p0, v5}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->b(I)Lcom/google/android/gms/auth/login/e;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->R()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/acl/ScopeData;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/common/analytics/c;->n:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->T()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {p0, v0, v3, v7, v8}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move v0, v1

    move v1, v2

    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->S()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/acl/ScopeData;->b(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->P()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/acl/ScopeData;->a(Z)V

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->Q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/acl/ScopeData;->b(Z)V

    sget-object v0, Lcom/google/android/gms/common/analytics/c;->o:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->U()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->P()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/auth/login/e;->Q()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {p0, v0, v1, v8, v7}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v10}, Lcom/google/android/gms/common/acl/ScopeData;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/google/android/gms/common/acl/ScopeData;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/acl/ScopeData;->a(Z)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/acl/ScopeData;->b(Z)V

    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    sget-object v0, Lcom/google/android/gms/common/analytics/c;->l:Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;)V

    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "GLSActivity"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    move v0, v4

    :goto_3
    if-ge v0, v2, :cond_7

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->b(I)Lcom/google/android/gms/auth/login/e;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/e;->R()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/e;->S()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/auth/login/e;->V()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const-string v0, "GLSActivity"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v0, -0x1

    sget-object v1, Lcom/google/android/gms/auth/firstparty/shared/k;->a:Lcom/google/android/gms/auth/firstparty/shared/k;

    sget-object v2, Lcom/google/android/gms/auth/firstparty/dataservice/az;->b:Lcom/google/android/gms/auth/firstparty/dataservice/az;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Lcom/google/android/gms/auth/firstparty/shared/k;Lcom/google/android/gms/auth/firstparty/dataservice/az;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->L:J

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    iget-wide v2, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->L:J

    iget-wide v6, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->K:J

    sub-long/2addr v2, v6

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/e;->e:J

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    iget-wide v2, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->M:J

    iput-wide v2, v0, Lcom/google/android/gms/auth/d/e;->j:J

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/e;->a()V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->H:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->G:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->finish()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->I:Lcom/google/android/gms/common/ui/ScrollViewWithEvents;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;->pageScroll(I)Z

    iget-wide v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->M:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->M:J

    goto/16 :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0050
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    .prologue
    .line 248
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 249
    new-instance v2, Lcom/google/android/gms/auth/d/e;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/d/e;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->K:J

    .line 252
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->requestWindowFeature(I)Z

    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Landroid/os/Bundle;)V

    .line 258
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GLSActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/acl/ScopeData;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/common/acl/ScopeData;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 256
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 258
    :cond_1
    const-string v2, "GLSActivity"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->D:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 261
    :cond_3
    const-string v2, "GLSActivity"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    const-string v3, "GLSActivity"

    const-string v4, "%s started with username=%s callingPackage=%s service=%s"

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->D:Ljava/lang/String;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    aput-object v2, v5, v6

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->setResult(I)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->finish()V

    .line 352
    :goto_3
    return-void

    .line 262
    :cond_5
    const-string v2, "<omitted>"

    goto :goto_2

    .line 273
    :cond_6
    const v2, 0x7f030032

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->setContentView(I)V

    .line 274
    const v2, 0x7f0d0053

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->w:Landroid/widget/LinearLayout;

    .line 275
    const v2, 0x7f0d0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->G:Landroid/widget/Button;

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->G:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v2, 0x7f0d0051

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->H:Landroid/widget/Button;

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->H:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    const v2, 0x7f0d009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/ui/ScrollViewWithEvents;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->I:Lcom/google/android/gms/common/ui/ScrollViewWithEvents;

    .line 282
    new-instance v2, Lcom/google/android/gms/auth/a/c;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/gms/auth/a/c;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/a/c;->d(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->x:Landroid/graphics/drawable/Drawable;

    .line 284
    invoke-virtual {v2, v3}, Lcom/google/android/gms/auth/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->y:Ljava/lang/String;

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->y:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 286
    :cond_7
    const-string v2, "GLSActivity"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 287
    const-string v2, "GLSActivity"

    const-string v3, "Failed to get ApplicationInfo for package: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->setResult(I)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->finish()V

    goto/16 :goto_3

    .line 296
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/d/e;->a(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/auth/d/e;->b(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->J:Lcom/google/android/gms/auth/d/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/auth/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/auth/d/e;->c(Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/app/j;->b:Landroid/support/v4/app/p;

    .line 302
    invoke-virtual {v2}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v3

    .line 303
    const-string v4, "headerFragment"

    invoke-virtual {v2, v4}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 304
    if-nez v2, :cond_a

    .line 305
    const v2, 0x7f0d009d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->y:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->D:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gms/auth/login/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/auth/login/c;

    move-result-object v4

    const-string v5, "headerFragment"

    invoke-virtual {v3, v2, v4, v5}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    .line 310
    :cond_a
    invoke-virtual {v3}, Landroid/support/v4/app/z;->d()Z

    move-result v2

    if-nez v2, :cond_b

    .line 311
    invoke-virtual {v3}, Landroid/support/v4/app/z;->b()I

    .line 314
    :cond_b
    const v2, 0x7f0d0054

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audience:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 319
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 320
    const v3, 0x7f100020

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "audience:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Expected auth token type to start with \'audience:\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->w:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 346
    invoke-static {v2}, Lcom/google/android/gms/common/k;->a(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 347
    const v3, 0x7f0b00b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 351
    :goto_5
    float-to-double v2, v2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/util/d;->a(Landroid/app/Activity;D)V

    goto/16 :goto_3

    .line 324
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 328
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 330
    if-nez v2, :cond_f

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    .line 333
    :cond_f
    const/4 v3, 0x0

    .line 334
    const-string v4, "SID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "LSID"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 335
    :cond_10
    const v2, 0x7f1003fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 336
    const v2, 0x7f1003fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    :goto_6
    new-instance v16, Lcom/google/android/gms/common/acl/b;

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/common/acl/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/common/acl/ScopeData;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/gms/common/acl/b;->a:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/google/android/gms/common/acl/b;->b:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/google/android/gms/common/acl/b;->c:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/google/android/gms/common/acl/b;->d:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/android/gms/common/acl/b;->e:Z

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/google/android/gms/common/acl/b;->f:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/google/android/gms/common/acl/b;->g:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-boolean v10, v0, Lcom/google/android/gms/common/acl/b;->h:Z

    move-object/from16 v0, v16

    iget-boolean v11, v0, Lcom/google/android/gms/common/acl/b;->i:Z

    move-object/from16 v0, v16

    iget-boolean v12, v0, Lcom/google/android/gms/common/acl/b;->j:Z

    move-object/from16 v0, v16

    iget-boolean v13, v0, Lcom/google/android/gms/common/acl/b;->k:Z

    move-object/from16 v0, v16

    iget-boolean v14, v0, Lcom/google/android/gms/common/acl/b;->l:Z

    move-object/from16 v0, v16

    iget-boolean v15, v0, Lcom/google/android/gms/common/acl/b;->m:Z

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gms/common/acl/b;->n:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/common/acl/ScopeData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZZZZLjava/util/List;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->d()V

    goto/16 :goto_4

    .line 349
    :cond_12
    const v3, 0x7f0b00b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto/16 :goto_5

    :cond_13
    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto :goto_6
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 369
    invoke-super {p0}, Landroid/support/v4/app/j;->onDestroy()V

    .line 370
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/support/v4/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    const-string v0, "callingPkg"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->A:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "callingUid"

    iget v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->B:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v0, "service"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->C:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "acctName"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->D:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "scopeData"

    iget-object v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 240
    const-string v0, "lastScopeIndex"

    iget v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->F:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->u:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->N:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    sget-object v0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->v:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/auth/login/GrantCredentialsWithAclActivity;->O:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    return-void
.end method
