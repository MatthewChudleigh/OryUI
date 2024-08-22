using Microsoft.AspNetCore.Components;
using Ory.Keto.Client.Model;
using OryAdmin.Services;

namespace OryAdmin.Components.Pages.Permissions;

public partial class Index
{
    private bool _isLoading = true;
    private KetoRelationshipNamespaces? _namespaces;

    [Inject] private ApiService ApiService { get; set; } = default!;

    protected override async Task OnInitializedAsync()
    {
        try
        {
            _namespaces = await ApiService.KetoRelationshipRead.ListRelationshipNamespacesAsync();
        }
        catch (Exception)
        {
            // ignored
        }

        _isLoading = false;
    }
}