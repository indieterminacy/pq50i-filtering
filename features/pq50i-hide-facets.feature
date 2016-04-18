Feature: Hide or exclude facets from a collection

@exclude @facets @lists
Scenario: Exclude a facet
    Given A group of objects is available
    When Presented a list of facets to exclude
    Then Matching objects are excluded from the group

Example:
company.hidecolumn(
    [
        'Group',
        # 'Date',
        'Country',
        # 'Stakeholder Type',
        'Opens'
    ])
# company.hidecolumn('Group')
# company.hidecolumn('Date')
# company.hidecolumn('Country')
# company.hidecolumn('Stakeholder Type')
# company.hidecolumn('Opens')
#
#
#
    def hidecolumn(
        self,
        q50columnstohide
    ):
        for item in q50columnstohide:
            self.q50kexcludedcolumns.append(
                item
            )
