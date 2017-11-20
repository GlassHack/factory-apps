.class Lcom/android/providers/contacts/CountryMonitor$1;
.super Ljava/lang/Object;
.source "CountryMonitor.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/CountryMonitor;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/CountryMonitor;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/providers/contacts/CountryMonitor$1;->this$0:Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/providers/contacts/CountryMonitor$1;->this$0:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {p1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/CountryMonitor;->access$002(Lcom/android/providers/contacts/CountryMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    return-void
.end method
