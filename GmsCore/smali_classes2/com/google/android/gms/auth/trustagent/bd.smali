.class final Lcom/google/android/gms/auth/trustagent/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/ak;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/auth/trustagent/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/bb;Lcom/google/android/gms/auth/trustagent/ak;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bd;->c:Lcom/google/android/gms/auth/trustagent/bb;

    iput-object p2, p0, Lcom/google/android/gms/auth/trustagent/bd;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iput-object p3, p0, Lcom/google/android/gms/auth/trustagent/bd;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bd;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bd;->b:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Z)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method
